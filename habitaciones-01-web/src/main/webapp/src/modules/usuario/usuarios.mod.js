/**
 * 
 * @param {type} ng
 * @returns {undefined}
 */
(function (ng) {
    /**
     * 
     * @type type
     */
    const mod = ng.module('usuarioModule', ['ui.router']);
    mod.constant('usuarioContext', 'api/usuarios');
    mod.config(['$stateProvider', '$urlRouterProvider',
        function ($stateProvider, $urlRouterProvider) {
            const basePath = 'src/modules/usuario/';
            $urlRouterProvider.otherwise('/usuariosList');
            $stateProvider.state('usuarios', {
                url: '/usuarios',
                abstract: true,
                /**
                 * Resolve
                 */
                resolve: {
                    usuarios: ['$http', 'usuarioContext',
                        function ($http, usuarioContext) {
                            return $http.get(usuarioContext);
                        }, ]
                },
                /**
                 * views
                 */
                views: {
                    'mainView': {
                        templateUrl: basePath + 'usuarios.html',
                        controller: ['$scope', 'usuarios',
                            function ($scope, usuarios) {
                                $scope.usuariosRecords = usuarios.data;
                            }, ]
                    },
                },
                /**
                 * state usuariosList
                 */
            }).state('usuariosList', {
                url: '/list',
                parent: 'usuarios',
                views: {
                    'listView': {
                        templateUrl: basePath + 'usuario.list.html'

                    }
                },
                /**
                 * state usuarioAdminLogin
                 */
            }).state('usuarioAdminLogin', {
                url: '/adminLogin',
                parent: 'usuarios',
                views: {
                    'listView': {
                        templateUrl: basePath + 'modal.html',
                        controller: ['$scope', '$http', '$state',
                            '$window', 'usuarios', 'usuarioContext',
                            function ($scope, $http, $state,
                                    $window, usuarios, usuarioContext) {
                                $scope.usuariosRecords = usuarios.data;

                                $scope.tempAdmin = {
                                    usuario: '',
                                    contrasenha: '',
                                };
                                console.log($scope.tempAdmin);
                                $scope.ingresar = function () {

                                    tempAdmin = $scope.tempAdmin;
                                    if ('JaimeAdmin' == tempAdmin.usuario) {

                                        if (1234 == tempAdmin.contrasenha) {

                                            $window.alert('Bienvenido');

                                            $state.go('usuariosList');

                                        }
                                    }
                                }
                            }, ]
                    },
                },
                /**
                 * state registrarUsuario
                 */
            }).state('registrarUsuario', {
                url: '/registrarUsuario',
                parent: 'usuarios',
                views: {
                    'listView': {
                        templateUrl: basePath + 'registrar.html',
                        controller: ['$scope', '$http', '$state',
                            'usuarios', 'usuarioContext',
                            function ($scope, $http, $state,
                                    usuarios, usuarioContext) {
                                //$scope.usuariosRecords = usuarios.data;

                                $scope.tempUser = {
                                    numeroID: '',
                                    tipoID: '',
                                    nombre: '',
                                    usuario: '',
                                    contrasenha: '',
                                    correo: '',
                                    direccion: '',
                                    telefono: '',
                                    numeroTarjeta: '',
                                    image: '',

                                };
                                console.log($scope.tempUser);
                                $scope.registrar = function () {

                                    tempUser = $scope.tempUser;
                                    console.log(tempUser);
                                    return $http.post(usuarioContext, tempUser)
                                            .then(function () {
                                                // $http.post es una promesa
                                                // cuando termine bien, cambie de estado
                                                $state.go('viviendasList');
                                                console.log('check');
                                            },);
                                }

                            },]
                    },
                },

                /**
                 * Ingresarusuario
                 * @returns {undefined}
                 */
            }).state('ingresarUsuario', {
                url: '/ingresarUsuario',
                parent: 'usuarios',
                views: {
                    'listView': {
                        templateUrl: basePath + 'ingresoUsuario.html',
                        controller: ['$scope', '$http', '$state',
                            '$window', 'usuarios', 'usuarioContext',
                            function ($scope, $http, $state,
                                    $window, usuarios, usuarioContext) {
                                $scope.usuariosRecords = usuarios.data;
                                usuariosRecords = $scope.usuariosRecords;
                                console.log(usuariosRecords.length);

                                $scope.tempCliente = {
                                    usuario: '',
                                    contrasenha: '',
                                };
                                console.log($scope.tempCliente);
                                $scope.ingresarUsuario = function () {

                                    tempCliente = $scope.tempCliente;
                                    const sizeRec = usuariosRecords.length;
                                    let encontrado = false;
                                    for (let j = 0; j < sizeRec; j++) {

                                        console.log(usuariosRecords[j]);
                                        if (usuariosRecords[j].usuario ==
                                                tempCliente.usuario) {

                                            if (usuariosRecords[j].contrasenha ==
                                                    tempCliente.contrasenha) {

                                                $window.alert('Bienvenido');
                                                encontrado = true;
                                                $state.go('reservasList');
                                                break;
                                            }
                                        }
                                    }
                                    if (!encontrado) {
                                        window.alert('No se reconoce el \n\
                                        usuario o contraseña');
                                    }
                                }
                            }, ]
                    },
                },

                /**
                 * UsuarioDetail state
                 */
            }).state('modificarUsuario', {
                url: '{usuarioId: int}/modificarUsuario',
                parent: 'usuarios',
                param: {
                    usuarioId: null,
                },
                views: {
                    'listView': {
                        templateUrl: basePath + 'modificarUsuario.html',
                        controller: ['$scope', '$http', '$state',
                            'usuarios', 'usuarioContext', '$stateParams',
                            function ($scope, $http, $state,
                                    usuarios, usuarioContext, $params) {
                                //$scope.usuariosRecords = usuarios.data;

                                $scope.tempUserMo = {
                                    numeroID: '',
                                    tipoID: '',
                                    nombre: '',
                                    usuario: '',
                                    contrasenha: '',
                                    correo: '',
                                    direccion: '',
                                    telefono: '',
                                    numeroTarjeta: '',
                                    image:'',
                                };
                                console.log($scope.tempUserMo);
                                $scope.update = function () {

                                    tempUserMo = $scope.tempUserMo;
                                    console.log(tempUserMo);
                                    return $http.put(usuarioContext + "/" + $params.usuarioId, tempUserMo)
                                            .then(function () {
                                                // $http.post es una promesa
                                                // cuando termine bien, cambie de estado
                                                $state.go('usuariosList');
                                                console.log('check');

                                            }, );
                                }
                            }, ]
                    },
                },

                /**
                 * Ingresarusuario
                 * @returns {undefined}
                 */
            }).state('usuarioDetail', {
                url: '/{usuarioId:int}/detail',
                parent: 'usuarios',
                param: {
                    usuarioId: null,
                },
                resolve: {
                    currentUsuario: ['$http', 'usuarioContext', '$stateParams',
                        function ($http, usuarioContext, $params) {
                            return $http.get(usuarioContext + '/'
                                    + $params.usuarioId);
                        }, ]
                },
                views: {
                    listView: {
                        templateUrl: basePath + 'usuario.list.html',
                        resolve: {
                            usuarios: ['$http', 'usuarioContext',
                                function ($http, usuarioContext) {
                                    return $http.get(usuarioContext);
                                }, ]
                        },
                    },
                    detailView: {

                        templateUrl: basePath + 'usuario.detail.html',
                        controller: ['$scope', 'currentUsuario',
                            function ($scope, currentUsuario) {
                                console.log(currentUsuario.data);
                                $scope.currentUsuario = currentUsuario.data;
                            }, ]
                    },
                },
            });
        }]);
})(window.angular);

