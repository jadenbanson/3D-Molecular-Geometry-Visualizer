//: [Previous](@previous)

/*:
 # Thank You !
 */

import SceneKit
import PlaygroundSupport
/*:
 ---
 ### Create the SceneKit View, last one :(
 */
let view = SCNView(frame: NSRect(x: 0, y: 0, width: 1024, height: 768))
view.showsStatistics = false
view.allowsCameraControl = false
PlaygroundPage.current.liveView = view

/*:
 ---
 ### Import the model(Scene) & Add Particle Flare ;)
 */
let scene = SCNScene(named: "thankYou.scn")
view.backgroundColor = NSColor.black
view.scene = scene

func createBackground() -> SCNParticleSystem {
    
    let dynamBackground = SCNParticleSystem(named: "bokemit.scnp", inDirectory: nil)!
    
    return dynamBackground
}

var emitterNode = createBackground()
scene?.rootNode.addParticleSystem(emitterNode)





//: [Next](@next)
