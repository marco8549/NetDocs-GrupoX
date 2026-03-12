<xs:schema attributeFormDefault="unqualified" elementFormDefault="qualified"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xs:element name="redesComputadoras">
        <xs:complexType>
            <xs:sequence>
                <xs:element name="tema">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element type="xs:string" name="descripcion" />
                        </xs:sequence>
                        <xs:attribute type="xs:byte" name="id" />
                        <xs:attribute type="xs:string" name="titulo" />
                    </xs:complexType>
                </xs:element>
                <xs:element name="definicionYPropiedades">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element type="xs:string" name="definicion" />
                            <xs:element name="propiedades">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="propiedad" maxOccurs="unbounded"
                                            minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element type="xs:string" name="descripcion" />
                                                    <xs:element type="xs:string" name="ejemplo"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string" name="detalle"
                                                        minOccurs="0" />
                                                </xs:sequence>
                                                <xs:attribute type="xs:string" name="nombre"
                                                    use="optional" />
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="importancia">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="aplicacion" maxOccurs="unbounded"
                                            minOccurs="0">
                                            <xs:complexType>
                                                <xs:simpleContent>
                                                    <xs:extension base="xs:string">
                                                        <xs:attribute type="xs:string" name="ambito"
                                                            use="optional" />
                                                    </xs:extension>
                                                </xs:simpleContent>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="clasificacionPorAlcance">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="tipo" maxOccurs="unbounded" minOccurs="0">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element type="xs:string" name="alcance" />
                                        <xs:element type="xs:string" name="descripcion"
                                            minOccurs="0" />
                                        <xs:element type="xs:string" name="caracteristicas"
                                            minOccurs="0" />
                                        <xs:element type="xs:string" name="ejemplo" />
                                        <xs:element type="xs:string" name="tecnologias"
                                            minOccurs="0" />
                                    </xs:sequence>
                                    <xs:attribute type="xs:string" name="nombre" use="optional" />
                                    <xs:attribute type="xs:string" name="siglas" use="optional" />
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="tiposConexion">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="guiadas">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element type="xs:string" name="descripcion" />
                                        <xs:element name="tecnologias">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="tecnologia"
                                                        maxOccurs="unbounded" minOccurs="0">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="descripcion" />
                                                                <xs:element name="variantes">
                                                                    <xs:complexType>
                                                                        <xs:sequence>
                                                                            <xs:element
                                                                                name="variante"
                                                                                maxOccurs="unbounded"
                                                                                minOccurs="0">
                                                                                <xs:complexType>
                                                                                    <xs:simpleContent>
                                                                                        <xs:extension
                                                                                            base="xs:string">
                                                                                            <xs:attribute
                                                                                                type="xs:string"
                                                                                                name="nombre"
                                                                                                use="optional" />
                                                                                        </xs:extension>
                                                                                    </xs:simpleContent>
                                                                                </xs:complexType>
                                                                            </xs:element>
                                                                        </xs:sequence>
                                                                    </xs:complexType>
                                                                </xs:element>
                                                                <xs:element type="xs:string"
                                                                    name="ventajas" />
                                                                <xs:element type="xs:string"
                                                                    name="usos" />
                                                            </xs:sequence>
                                                            <xs:attribute type="xs:string"
                                                                name="nombre" use="optional" />
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                    <xs:attribute type="xs:string" name="nombre" />
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="noGuiadas">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element type="xs:string" name="descripcion" />
                                        <xs:element name="tecnologias">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="tecnologia">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="descripcion" />
                                                                <xs:element name="caracteristicas">
                                                                    <xs:complexType>
                                                                        <xs:sequence>
                                                                            <xs:element
                                                                                type="xs:string"
                                                                                name="item"
                                                                                maxOccurs="unbounded"
                                                                                minOccurs="0" />
                                                                        </xs:sequence>
                                                                    </xs:complexType>
                                                                </xs:element>
                                                                <xs:element type="xs:string"
                                                                    name="desventajas" />
                                                            </xs:sequence>
                                                            <xs:attribute type="xs:string"
                                                                name="nombre" />
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                    <xs:attribute type="xs:string" name="nombre" />
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="hibridas">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element type="xs:string" name="descripcion" />
                                        <xs:element type="xs:string" name="ejemplo" />
                                        <xs:element type="xs:string" name="recomendacion" />
                                    </xs:sequence>
                                    <xs:attribute type="xs:string" name="nombre" />
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="modelosReferencia">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="modeloOSI">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element type="xs:string" name="descripcion" />
                                        <xs:element name="capas">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="capa" maxOccurs="unbounded"
                                                        minOccurs="0">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="funcion" />
                                                                <xs:element type="xs:string"
                                                                    name="protocolos" minOccurs="0" />
                                                                <xs:element type="xs:string"
                                                                    name="ejemplos" minOccurs="0" />
                                                            </xs:sequence>
                                                            <xs:attribute type="xs:byte"
                                                                name="numero" use="optional" />
                                                            <xs:attribute type="xs:string"
                                                                name="nombre" use="optional" />
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="modeloTCPIP">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element type="xs:string" name="descripcion" />
                                        <xs:element name="capas">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="capa" maxOccurs="unbounded"
                                                        minOccurs="0">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="funcion" />
                                                                <xs:element type="xs:string"
                                                                    name="servicios" minOccurs="0" />
                                                                <xs:element type="xs:string"
                                                                    name="protocolos" minOccurs="0" />
                                                                <xs:element type="xs:string"
                                                                    name="ejemplos" minOccurs="0" />
                                                            </xs:sequence>
                                                            <xs:attribute type="xs:string"
                                                                name="nombre" use="optional" />
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element type="xs:string" name="importanciaModelos" />
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="protocolosComunicacion">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element type="xs:string" name="descripcion" />
                            <xs:element name="protocolosTransporte">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="protocolo" maxOccurs="unbounded"
                                            minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="caracteristicas">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="item"
                                                                    maxOccurs="unbounded"
                                                                    minOccurs="0" />
                                                            </xs:sequence>
                                                        </xs:complexType>
                                                    </xs:element>
                                                    <xs:element type="xs:string" name="usos" />
                                                    <xs:element type="xs:string" name="desventaja"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string" name="ventaja"
                                                        minOccurs="0" />
                                                </xs:sequence>
                                                <xs:attribute type="xs:string" name="nombre"
                                                    use="optional" />
                                            </xs:complexType>
                                        </xs:element>
                                        <xs:element name="tablaComparativaTCPvsUDP">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="fila" maxOccurs="unbounded"
                                                        minOccurs="0">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="caracteristica" />
                                                                <xs:element type="xs:string"
                                                                    name="tcp" />
                                                                <xs:element type="xs:string"
                                                                    name="udp" />
                                                            </xs:sequence>
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="protocolosAplicacionYRed">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="protocolo" maxOccurs="unbounded"
                                            minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element type="xs:string" name="descripcion" />
                                                </xs:sequence>
                                                <xs:attribute type="xs:string" name="nombre"
                                                    use="optional" />
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="seguridad">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element type="xs:string" name="descripcion" />
                            <xs:element name="mecanismos">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="mecanismo" maxOccurs="unbounded"
                                            minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element type="xs:string" name="descripcion" />
                                                </xs:sequence>
                                                <xs:attribute type="xs:string" name="nombre"
                                                    use="optional" />
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="principio">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element type="xs:string" name="descripcion" />
                                    </xs:sequence>
                                    <xs:attribute type="xs:string" name="nombre" />
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="topologiasYModosConexion">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="topologias">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="topologia" maxOccurs="unbounded"
                                            minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element type="xs:string" name="descripcion" />
                                                    <xs:element type="xs:string" name="ventajas"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string" name="desventajas"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string" name="usos"
                                                        minOccurs="0" />
                                                </xs:sequence>
                                                <xs:attribute type="xs:string" name="nombre"
                                                    use="optional" />
                                            </xs:complexType>
                                        </xs:element>
                                        <xs:element name="tablaTopologias">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="fila" maxOccurs="unbounded"
                                                        minOccurs="0">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="topologia" />
                                                                <xs:element type="xs:string"
                                                                    name="descripcionVisual" />
                                                                <xs:element type="xs:string"
                                                                    name="ventajaPrincipal" />
                                                                <xs:element type="xs:string"
                                                                    name="desventajaPrincipal" />
                                                            </xs:sequence>
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="modosConexion">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="modo" maxOccurs="unbounded" minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element type="xs:string"
                                                        name="protocoloEjemplo" />
                                                    <xs:element type="xs:string"
                                                        name="funcionamiento" />
                                                    <xs:element type="xs:string"
                                                        name="caracteristicas" />
                                                    <xs:element type="xs:string" name="ventajas" />
                                                    <xs:element type="xs:string" name="desventajas" />
                                                    <xs:element type="xs:string" name="usosIdeal"
                                                        minOccurs="0" />
                                                </xs:sequence>
                                                <xs:attribute type="xs:string" name="nombre"
                                                    use="optional" />
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
                <xs:element name="componentesHardware">
                    <xs:complexType>
                        <xs:sequence>
                            <xs:element name="mediosTransmisionCableados">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="tecnologia" maxOccurs="unbounded"
                                            minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element type="xs:string" name="descripcion"
                                                        minOccurs="0" />
                                                    <xs:element name="variantes">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element name="variante"
                                                                    maxOccurs="unbounded"
                                                                    minOccurs="0">
                                                                    <xs:complexType mixed="true">
                                                                        <xs:sequence>
                                                                            <xs:element
                                                                                type="xs:string"
                                                                                name="especificaciones"
                                                                                minOccurs="0" />
                                                                            <xs:element
                                                                                type="xs:string"
                                                                                name="usos"
                                                                                minOccurs="0" />
                                                                        </xs:sequence>
                                                                        <xs:attribute
                                                                            type="xs:string"
                                                                            name="nombre"
                                                                            use="optional" />
                                                                    </xs:complexType>
                                                                </xs:element>
                                                            </xs:sequence>
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                                <xs:attribute type="xs:string" name="nombre"
                                                    use="optional" />
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="estandaresWiFi">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element type="xs:string" name="descripcion" />
                                        <xs:element name="estandar" maxOccurs="unbounded"
                                            minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element type="xs:string" name="banda"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string" name="bandas"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string" name="velocidad" />
                                                    <xs:element type="xs:string" name="problema"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string"
                                                        name="caracteristica" minOccurs="0" />
                                                    <xs:element name="caracteristicas" minOccurs="0">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="item"
                                                                    maxOccurs="unbounded"
                                                                    minOccurs="0" />
                                                            </xs:sequence>
                                                        </xs:complexType>
                                                    </xs:element>
                                                    <xs:element type="xs:string" name="periodo"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string" name="idealPara"
                                                        minOccurs="0" />
                                                    <xs:element type="xs:string" name="comentario"
                                                        minOccurs="0" />
                                                </xs:sequence>
                                                <xs:attribute type="xs:string" name="nombre"
                                                    use="optional" />
                                            </xs:complexType>
                                        </xs:element>
                                        <xs:element name="tablaRedesInalambricas">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element name="fila" maxOccurs="unbounded"
                                                        minOccurs="0">
                                                        <xs:complexType>
                                                            <xs:sequence>
                                                                <xs:element type="xs:string"
                                                                    name="estandar" />
                                                                <xs:element type="xs:string"
                                                                    name="nombreComun" />
                                                                <xs:element type="xs:string"
                                                                    name="frecuencia" />
                                                                <xs:element type="xs:string"
                                                                    name="caracteristicaClave" />
                                                            </xs:sequence>
                                                        </xs:complexType>
                                                    </xs:element>
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                            <xs:element name="tablaComponentesRed">
                                <xs:complexType>
                                    <xs:sequence>
                                        <xs:element name="fila" maxOccurs="unbounded" minOccurs="0">
                                            <xs:complexType>
                                                <xs:sequence>
                                                    <xs:element type="xs:string" name="medio" />
                                                    <xs:element type="xs:string" name="tipo" />
                                                    <xs:element type="xs:string"
                                                        name="velocidadAlcance" />
                                                    <xs:element type="xs:string" name="casoUso" />
                                                </xs:sequence>
                                            </xs:complexType>
                                        </xs:element>
                                    </xs:sequence>
                                </xs:complexType>
                            </xs:element>
                        </xs:sequence>
                    </xs:complexType>
                </xs:element>
            </xs:sequence>
        </xs:complexType>
    </xs:element>
</xs:schema>