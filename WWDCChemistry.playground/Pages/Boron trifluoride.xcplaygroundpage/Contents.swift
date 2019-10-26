//: [Next](@next)

/*:
 # III.) Boron Trifluoride
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
 ### Import the model(Scene) & Add a little flare ;)
 */
let scene = SCNScene(named: "boronTrifluoride.scn")
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
let boronMoleculeAnim = scene?.rootNode.childNode(withName: "boronMolecule", recursively: false)

/*:
 ---
 ### Create a rotate action and run it on the Molecule
 */
let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 2, y: 2, z: CGFloat(90 * M_PI / 180), duration: 3))


boronMoleculeAnim?.runAction(rotate)

//: [Previous](@previous)