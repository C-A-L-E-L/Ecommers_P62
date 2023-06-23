
// Esperar que la pag carge por completo
window.addEventListener('load', function() {

	const usuario = document.querySelector('#user');
	const name = document.querySelector('#name');
	const psw = document.querySelector('#psw');
	const psw2 = document.querySelector('#psw2');
	const parrafo = document.getElementById("warnings");
	const parrafos = document.getElementById("notWarnings");

	const expresiones = {
		usuario: /^(?=.*[A-Z])(?=.*\d.*\d)(?=.*[-_])[a-zA-Z0-9_-]{4,16}$/, // Letras, numeros, guion y guion_bajo
		nombre: /^[A-ZÑ][a-zñáéíóúÁÉÍÓÚ'° ]+[ ][A-ZÑ][a-zñáéíóúÁÉÍÓÚ'° ]+$/, 	// Letras y espacios, pueden llevar acentos
		psw: /^(?=.*[0-9])(?=.*[a-zA-Z])(?=.*[!@#$%&*.])[0-9a-zA-Z!@#$%&*.]{8,}$/
	}

	// + + + Validar Usuario + + +
	function validarUsuario() {
		if (expresiones.usuario.test(usuario.value)) {
			parrafos.innerHTML += 'Usuario Valido  <br>';
			console.log('Usuario Correcto');
		} else {
			parrafo.innerHTML += 'Usuario Invalido  <br>';
			console.log('USUARIO INCORRECTO');
		}
	}

	// + + + Validar Nombre y Apellido + + +
	function validarNombre() {
		if (expresiones.nombre.test(name.value)) {
			parrafos.innerHTML += 'Nombre Valido  <br>';
			console.log('Nombre Correcto');
		} else {
			parrafo.innerHTML += 'Nombre Invalido  <br>';
			console.log('NOMBRE INCORRECTO');
		}
	}

	// + + + Validar Cedula + + +
	function validarCI() {
		var cad = document.getElementById("ci").value.trim();
		var total = 0;
		var longitud = cad.length;
		var longcheck = longitud - 1;

		if (cad !== "" && longitud === 10) {
			for (i = 0; i < longcheck; i++) {
				if (i % 2 === 0) {
					var aux = cad.charAt(i) * 2;
					if (aux > 9) aux -= 9;
					total += aux;
				} else {
					total += parseInt(cad.charAt(i)); // parseInt o concatenará en lugar de sumar
				}
			}

			total = total % 10 ? 10 - total % 10 : 0;

			if (cad.charAt(longitud - 1) == total) {
				parrafos.innerHTML += 'Ci Valida ' + provincia() + '<br>';
				console.log("Cedula Válida - " + provincia());
			} else {
				parrafo.innerHTML += 'Ci Invalido  <br>';
				console.log("Cedula INVALIDA");
			}
		} else {
			parrafo.innerHTML += 'Ci Incompleto <br>';
			console.log("CI tiene menos o mas de 10 caracteres");
		}
	}

	// + + + Verificar Ciudad + + +
	function provincia() {
		const cad = form.querySelector('#ci').value;
		var provi = cad.substring(0, 2);
		if (provi == '01') {
			return "Azuay";
		} else if (provi == '02') {
			return "Bolívar";
		} else if (provi == '03') {
			return "cañar";
		} else if (provi == '04') {
			return "Carchi";
		} else if (provi == '05') {
			return "Cotopaxi";
		} else if (provi == '06') {
			return "Chimborazo";
		} else if (provi == '07') {
			return "El Oro";
		} else if (provi == '08') {
			return "Esmeraldas";
		} else if (provi == '09') {
			return "Guayas";
		} else if (provi == '10') {
			return "Imbabura";
		} else if (provi == '11') {
			return "Loja";
		} else if (provi == '12') {
			return "Los Rios";
		} else if (provi == '13') {
			return "Manabi";
		} else if (provi == '14') {
			return "Morona Santiago";
		} else if (provi == '15') {
			return "Napo";
		} else if (provi == '16') {
			return "Pastaza";
		} else if (provi == '17') {
			return "Pichincha";
		} else if (provi == '18') {
			return "Tungurahua";
		} else if (provi == '19') {
			return "Samora Chinchipe";
		} else if (provi == '20') {
			return "Galápagos";
		} else if (provi == '21') {
			return "Sucumbíos";
		} else if (provi == '22') {
			return "Orellana";
		} else if (provi == '23') {
			return "Santo Domingo de los Tsáchilas";
		} else if (provi == '24') {
			return "Santa Elena";
		} else if (provi == '30') {
			return "Emigrante";
		} else {
			return "ERROR";
		}
	}

	// + + + Validar PSW + + +
	function validarPsw() {
		if (expresiones.psw.test(psw.value)) {
			if (psw.value === psw2.value) {
				parrafos.innerHTML += 'PSW Seguro <br>';
				console.log('PSW Seguro');
				console.log("Contraseñas Iguales");
			} else {
				parrafo.innerHTML += 'Las PSW no son iguales <br>';
				console.log("Contraseñas Erroneas");
			}
		} else {
			parrafo.innerHTML += 'PSW DEBIL <br>';
			console.log('PSW DEBIL');
		}
	}

	// + + + Calcular Edad + + +
	function calcularEdad() {
		var fechaActual = new Date();											// Obtener la fecha actual
		var fechaNacimiento = new Date(document.getElementById("date").value);	// Obtener la fecha de nacimiento ingresada por el usuario
		var diff = fechaActual.getTime() - fechaNacimiento.getTime();			// Calcular la diferencia en milisegundos entre la fecha actual y la fecha de nacimiento
		var edad = Math.floor(diff / (1000 * 60 * 60 * 24 * 365.25));			// Convertir la diferencia a años

		parrafos.innerHTML += 'Tiene ' + edad + ' años<br>';
		console.log("Tienes " + edad + ' años');
	}

	// + + + Residencia + + +
	function obtenerOpcionSeleccionada() {
		const botonesRadio = document.getElementsByName("rdResidencia");

		for (let i = 0; i < botonesRadio.length; i++) {		// Recorreo los botones
			if (botonesRadio[i].checked) {
				return botonesRadio[i].value; 				// Retornar el valor seleccionado
			}
		}
		return null; 										// Si no se seleccionó ninguna opción, retornar null
	}
	
	// + + + Color + + +
	function getColor() {
	    const colorPicker = document.getElementById("#color");
	    const selectedColor = color.value;
	    parrafos.innerHTML += 'Color Fav ' + selectedColor + '<br>';
	    console.log("Color seleccionado:", selectedColor);
	}
	  
	// Funcion de tipo flecha
	form.addEventListener("submit", e => {
		e.preventDefault();				 	// Evitar valores vacios
		parrafo.innerHTML = "";
		parrafos.innerHTML = "";
		validarUsuario();
		validarNombre();
		calcularEdad();
		validarCI();
		validarPsw();
		// Residencia
		const opcionSeleccionada = obtenerOpcionSeleccionada();
		parrafos.innerHTML += 'Vive al ' + opcionSeleccionada + ' de la ciudad<br>';
		console.log(opcionSeleccionada);
		getColor();

		/*const colorInput = document.getElementById('color');
		const selectedColor = colorInput.value;
		console.log(`El usuario seleccionó el color ${selectedColor}`);*/

		
	});
});
