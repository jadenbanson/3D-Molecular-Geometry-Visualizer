//: [Next](@next)

/*:
 # I.) Carbon Dioxide Molecule
 */

import SceneKit
import PlaygroundSupport
/*:
 ---
 ### Create the SceneKit View
 */
let view = SCNView(frame: NSRect(x: 0, y: 0, width: 1024, height: 768))
view.showsStatistics = false
view.allowsCameraControl = true
PlaygroundPage.current.liveView = view

/*:
 ---
 ### Import the model (Scene) & add a little background flare ;)
 */
let scene = SCNScene(named: "carbonDioxide.scn")

view.backgroundColor = NSColor.black
view.scene = scene

func createBackground() -> SCNParticleSystem {
    
    let dynamBackground = SCNParticleSystem(named: "scnBackground.scnp", inDirectory: nil)!
    

    return dynamBackground
}

var emitterNode = createBackground()
scene?.rootNode.addParticleSystem(emitterNode)



/*:
 ---
 ### Get a reference to the Molecule Node
 */
let carbonMoleCuleAnim = scene?.rootNode.childNode(withName: "carbonAtomNode", recursively: true)

/*:
 ---
 ### Create a rotate action and run it on the Molecule
 */
let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 0, y: CGFloat(360 * M_PI / 180), z: CGFloat(360 * M_PI / 180), duration: 15))


carbonMoleCuleAnim?.runAction(rotate)




