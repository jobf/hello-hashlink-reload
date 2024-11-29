package;


import lime.app.Application;
import lime.graphics.RenderContext;


class Main extends Application {

	function reload(){
		var message = "Hello hot reload!";
		trace(Date.now() + ' $message');
	}
	
	override function update(elapsed:Int) {
		if(hl.Api.checkReload()){
			reload();
		}
	}

}