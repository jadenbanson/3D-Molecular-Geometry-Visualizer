//: [Next](@next)

/*:
 # IV.) Sulfur Tetrafluoride
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
let scene = SCNScene(named: "sulfurTetrafluoride.scn")
view.backgroundColor = NSColor.black
view.scene = scene

func createBackground() -> SCNParticleSystem {
    
    let dynamBackground = SCNParticleSystem(named: "scnBackground.scnp", inDirectory: nil)!
    
    return dynamBackground
}

var emitterNode = createBackground()
scene?.rootNode.addParticleSystem(emitterNode)


let spot2 = SCNNode()
spot2.light = SCNLight()
spot2.light?.type = .ambient
spot2.position = SCNVector3(x: 5, y: 5, z: 9)
scene?.rootNode.addChildNode(spot2)

/*:
 ---
 ### Get a reference to the Molecule Node
 */
let sulfurMolecule = scene?.rootNode.childNode(withName: "sulfurAtomNode", recursively: false)

/*:
 ---
 ### Create a rotate action and run it on the Molecule
 */
let rotate = SCNAction.repeatForever(SCNAction.rotateBy(x: 2, y: 2, z: CGFloat(90 * M_PI / 180), duration: 5))


sulfurMolecule?.runAction(rotate)

//: [Previous](@previous)
