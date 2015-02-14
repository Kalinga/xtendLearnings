/*******************************************************************************
 * Copyright (c) 2012 itemis AG (http://www.itemis.eu) and others.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *******************************************************************************/
package example1

class HelloWorld {
	def static void main(String[] args) {
		
		var  test=modifyMe(true, 3)
		println ( test)
	}
	
	def static modifyMe(boolean cond, int n ){
		'''
		<helloworld>
			«IF cond»
				<description>
					<interface>
						«IF 3== n»
							«FOR i : n ..0»
								<input></input>
							«ENDFOR»
						«ENDIF»
					</interface>
				</description>
			«ENDIF»
		</helloworld>
		'''
	}
		
}    