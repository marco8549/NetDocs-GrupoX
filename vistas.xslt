<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <meta charset="UTF-8"/>
                <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                <title>Redes de Computadoras</title>
                <style>
                    * {
                        margin: 0;
                        padding: 0;
                        box-sizing: border-box;
                    }
                    
                    body {
                        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
                        line-height: 1.6;
                        color: #333;
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        min-height: 100vh;
                        padding: 20px;
                    }
                    
                    .container {
                        max-width: 1200px;
                        margin: 0 auto;
                        background: white;
                        border-radius: 10px;
                        box-shadow: 0 10px 40px rgba(0,0,0,0.3);
                        overflow: hidden;
                    }
                    
                    header {
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        color: white;
                        padding: 40px 20px;
                        text-align: center;
                    }
                    
                    h1 {
                        font-size: 2.5em;
                        margin-bottom: 10px;
                    }
                    
                    .description {
                        font-size: 1.1em;
                        opacity: 0.9;
                        max-width: 800px;
                        margin: 0 auto;
                    }
                    
                    main {
                        padding: 40px;
                    }
                    
                    section {
                        margin-bottom: 40px;
                    }
                    
                    h2 {
                        font-size: 1.8em;
                        color: #667eea;
                        margin-bottom: 20px;
                        padding-bottom: 10px;
                        border-bottom: 3px solid #667eea;
                    }
                    
                    h3 {
                        font-size: 1.3em;
                        color: #764ba2;
                        margin-top: 20px;
                        margin-bottom: 15px;
                    }
                    
                    .subsection {
                        background: #f8f9ff;
                        padding: 20px;
                        border-radius: 8px;
                        margin-bottom: 15px;
                        border-left: 5px solid #667eea;
                    }
                    
                    .propiedad {
                        background: white;
                        padding: 20px;
                        margin-bottom: 15px;
                        border-radius: 8px;
                        border: 2px solid #e0e0e0;
                        transition: all 0.3s ease;
                    }
                    
                    .propiedad:hover {
                        border-color: #667eea;
                        box-shadow: 0 5px 15px rgba(102, 126, 234, 0.2);
                    }
                    
                    .propiedad-nombre {
                        font-size: 1.2em;
                        font-weight: bold;
                        color: #667eea;
                        margin-bottom: 10px;
                    }
                    
                    .propiedad-descripcion {
                        color: #555;
                        margin-bottom: 10px;
                    }
                    
                    .detalle, .ejemplo {
                        background: #f0f0f0;
                        padding: 15px;
                        border-radius: 5px;
                        margin-top: 10px;
                        border-left: 4px solid #764ba2;
                        font-style: italic;
                        color: #666;
                    }
                    
                    table {
                        width: 100%;
                        border-collapse: collapse;
                        margin-bottom: 20px;
                        background: white;
                        border-radius: 8px;
                        overflow: hidden;
                        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                    }
                    
                    th {
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        color: white;
                        padding: 15px;
                        text-align: left;
                        font-weight: 600;
                    }
                    
                    td {
                        padding: 12px 15px;
                        border-bottom: 1px solid #e0e0e0;
                    }
                    
                    tr:hover {
                        background: #f8f9ff;
                    }
                    
                    .tecnologia {
                        background: white;
                        padding: 20px;
                        margin-bottom: 15px;
                        border-radius: 8px;
                        border: 2px solid #e0e0e0;
                    }
                    
                    .tecnologia-nombre {
                        font-size: 1.15em;
                        font-weight: bold;
                        color: #667eea;
                        margin-bottom: 10px;
                    }
                    
                    .caracteristicas {
                        background: #f8f9ff;
                        padding: 15px;
                        border-radius: 5px;
                        margin-top: 10px;
                    }
                    
                    .caracteristicas ul {
                        list-style-position: inside;
                        margin-left: 10px;
                    }
                    
                    .caracteristicas li {
                        margin-bottom: 8px;
                        color: #555;
                    }
                    
                    .topologia-card {
                        background: white;
                        padding: 20px;
                        margin-bottom: 15px;
                        border-radius: 8px;
                        border-left: 5px solid #667eea;
                        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                    }
                    
                    .topologia-nombre {
                        font-size: 1.15em;
                        font-weight: bold;
                        color: #667eea;
                        margin-bottom: 10px;
                    }
                    
                    .aplicacion {
                        display: inline-block;
                        background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
                        color: white;
                        padding: 8px 16px;
                        border-radius: 20px;
                        margin: 5px 5px 5px 0;
                        font-size: 0.9em;
                    }
                    
                    .capa-osi {
                        background: white;
                        padding: 20px;
                        margin-bottom: 15px;
                        border-radius: 8px;
                        border-top: 5px solid #667eea;
                        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                    }
                    
                    .capa-numero {
                        display: inline-block;
                        background: #667eea;
                        color: white;
                        width: 40px;
                        height: 40px;
                        border-radius: 50%;
                        text-align: center;
                        line-height: 40px;
                        font-weight: bold;
                        margin-right: 15px;
                    }
                    
                    .capa-titulo {
                        font-size: 1.2em;
                        font-weight: bold;
                        color: #667eea;
                        margin-bottom: 10px;
                    }
                    
                    .mecanismo {
                        background: white;
                        padding: 20px;
                        margin-bottom: 15px;
                        border-radius: 8px;
                        border-left: 5px solid #764ba2;
                        box-shadow: 0 2px 8px rgba(0,0,0,0.1);
                    }
                    
                    .mecanismo-nombre {
                        font-size: 1.15em;
                        font-weight: bold;
                        color: #764ba2;
                        margin-bottom: 10px;
                    }
                    
                    footer {
                        background: #f0f0f0;
                        text-align: center;
                        padding: 20px;
                        color: #666;
                    }
                </style>
            </head>
            <body>
                <div class="container">
                    <header>
                        <xsl:apply-templates select="redesComputadoras/tema"/>
                    </header>
                    
                    <main>
                        <xsl:apply-templates select="redesComputadoras/definicionYPropiedades"/>
                        <xsl:apply-templates select="redesComputadoras/clasificacionPorAlcance"/>
                        <xsl:apply-templates select="redesComputadoras/tiposConexion"/>
                        <xsl:apply-templates select="redesComputadoras/modelosReferencia"/>
                        <xsl:apply-templates select="redesComputadoras/protocolosComunicacion"/>
                        <xsl:apply-templates select="redesComputadoras/seguridad"/>
                        <xsl:apply-templates select="redesComputadoras/topologiasYModosConexion"/>
                        <xsl:apply-templates select="redesComputadoras/componentesHardware"/>
                    </main>
                    
                    <footer>
                        <p>Contenido educativo - Redes de Computadoras</p>
                    </footer>
                </div>
            </body>
        </html>
    </xsl:template>
    
    <!-- TEMA PRINCIPAL -->
    <xsl:template match="tema">
        <h1>
            <xsl:value-of select="@titulo"/>
        </h1>
        <div class="description">
            <xsl:value-of select="descripcion"/>
        </div>
    </xsl:template>
    
    <!-- DEFINICIÓN Y PROPIEDADES -->
    <xsl:template match="definicionYPropiedades">
        <section>
            <h2>Definición y Propiedades</h2>
            
            <div class="subsection">
                <h3>¿Qué es una Red de Computadoras?</h3>
                <xsl:value-of select="definicion"/>
            </div>
            
            <h3>Propiedades Principales</h3>
            <xsl:for-each select="propiedades/propiedad">
                <div class="propiedad">
                    <div class="propiedad-nombre">
                        <xsl:value-of select="@nombre"/>
                    </div>
                    <div class="propiedad-descripcion">
                        <xsl:value-of select="descripcion"/>
                    </div>
                    <xsl:if test="ejemplo">
                        <div class="ejemplo">
                            <strong>Ejemplo:</strong> <xsl:value-of select="ejemplo"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="detalle">
                        <div class="detalle">
                            <xsl:value-of select="detalle"/>
                        </div>
                    </xsl:if>
                </div>
            </xsl:for-each>
            
            <h3>Importancia y Aplicaciones</h3>
            <div class="subsection">
                <xsl:for-each select="importancia/aplicacion">
                    <div class="aplicacion">
                        <strong><xsl:value-of select="@ambito"/>:</strong>
                        <xsl:text> </xsl:text>
                        <xsl:value-of select="."/>
                    </div>
                </xsl:for-each>
            </div>
        </section>
    </xsl:template>
    
    <!-- CLASIFICACIÓN POR ALCANCE -->
    <xsl:template match="clasificacionPorAlcance">
        <section>
            <h2>Clasificación de Redes por Alcance</h2>
            <xsl:for-each select="tipo">
                <div class="topologia-card">
                    <div class="topologia-nombre">
                        <xsl:value-of select="@nombre"/> (<xsl:value-of select="@siglas"/>)
                    </div>
                    <div style="color: #764ba2; font-weight: bold; margin-bottom: 10px;">
                        <xsl:value-of select="alcance"/>
                    </div>
                    <div style="margin-bottom: 10px;">
                        <xsl:value-of select="descripcion"/>
                    </div>
                    <xsl:if test="ejemplo">
                        <div class="ejemplo">
                            <strong>Ejemplo:</strong> <xsl:value-of select="ejemplo"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="tecnologias">
                        <div style="margin-top: 10px; color: #666;">
                            <strong>Tecnologías:</strong> <xsl:value-of select="tecnologias"/>
                        </div>
                    </xsl:if>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>
    
    <!-- TIPOS DE CONEXIÓN -->
    <xsl:template match="tiposConexion">
        <section>
            <h2>Tipos de Conexión</h2>
            
            <!-- Conexiones Guiadas -->
            <xsl:for-each select="guiadas">
                <h3><xsl:value-of select="@nombre"/></h3>
                <div class="subsection">
                    <xsl:value-of select="descripcion"/>
                </div>
                <xsl:for-each select="tecnologias/tecnologia">
                    <div class="tecnologia">
                        <div class="tecnologia-nombre">
                            <xsl:value-of select="@nombre"/>
                        </div>
                        <xsl:if test="descripcion">
                            <div style="margin-bottom: 10px;">
                                <xsl:value-of select="descripcion"/>
                            </div>
                        </xsl:if>
                        <xsl:if test="variantes">
                            <div class="caracteristicas">
                                <strong>Variantes:</strong>
                                <ul>
                                    <xsl:for-each select="variantes/variante">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </xsl:if>
                        <xsl:if test="ventajas">
                            <div class="caracteristicas">
                                <strong>Ventajas:</strong> <xsl:value-of select="ventajas"/>
                            </div>
                        </xsl:if>
                        <xsl:if test="usos">
                            <div class="caracteristicas">
                                <strong>Usos:</strong> <xsl:value-of select="usos"/>
                            </div>
                        </xsl:if>
                    </div>
                </xsl:for-each>
            </xsl:for-each>
            
            <!-- Conexiones No Guiadas -->
            <xsl:for-each select="noGuiadas">
                <h3><xsl:value-of select="@nombre"/></h3>
                <div class="subsection">
                    <xsl:value-of select="descripcion"/>
                </div>
                <xsl:for-each select="tecnologias/tecnologia">
                    <div class="tecnologia">
                        <div class="tecnologia-nombre">
                            <xsl:value-of select="@nombre"/>
                        </div>
                        <xsl:if test="descripcion">
                            <div style="margin-bottom: 10px;">
                                <xsl:value-of select="descripcion"/>
                            </div>
                        </xsl:if>
                        <xsl:if test="caracteristicas">
                            <div class="caracteristicas">
                                <strong>Características:</strong>
                                <ul>
                                    <xsl:for-each select="caracteristicas/item">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                        </xsl:if>
                        <xsl:if test="desventajas">
                            <div class="caracteristicas" style="background: #ffe0e0; border-left-color: #764ba2;">
                                <strong>Desventajas:</strong> <xsl:value-of select="desventajas"/>
                            </div>
                        </xsl:if>
                    </div>
                </xsl:for-each>
            </xsl:for-each>
            
            <!-- Redes Híbridas -->
            <xsl:for-each select="hibridas">
                <h3><xsl:value-of select="@nombre"/></h3>
                <div class="subsection">
                    <xsl:value-of select="descripcion"/>
                </div>
                <xsl:if test="ejemplo">
                    <div class="ejemplo">
                        <strong>Ejemplo:</strong> <xsl:value-of select="ejemplo"/>
                    </div>
                </xsl:if>
                <xsl:if test="recomendacion">
                    <div style="background: #e0ffe0; padding: 15px; border-radius: 5px; border-left: 4px solid #00aa00; margin-top: 10px;">
                        <strong style="color: #00aa00;">✓ Recomendación:</strong> 
                        <xsl:value-of select="recomendacion"/>
                    </div>
                </xsl:if>
            </xsl:for-each>
        </section>
    </xsl:template>
    
    <!-- MODELOS DE REFERENCIA -->
    <xsl:template match="modelosReferencia">
        <section>
            <h2>Modelos de Referencia de Red</h2>
            
            <!-- Modelo OSI -->
            <h3>Modelo OSI (7 Capas)</h3>
            <div class="subsection">
                <xsl:value-of select="modeloOSI/descripcion"/>
            </div>
            <div style="display: grid; grid-template-columns: 1fr; gap: 15px;">
                <xsl:for-each select="modeloOSI/capas/capa">
                    <div class="capa-osi">
                        <div style="display: flex; align-items: center; margin-bottom: 10px;">
                            <div class="capa-numero">
                                <xsl:value-of select="@numero"/>
                            </div>
                            <div class="capa-titulo">
                                <xsl:value-of select="@nombre"/>
                            </div>
                        </div>
                        <xsl:if test="funcion">
                            <div style="margin-bottom: 10px; color: #555;">
                                <xsl:value-of select="funcion"/>
                            </div>
                        </xsl:if>
                        <xsl:if test="protocolos">
                            <div style="background: #f8f9ff; padding: 10px; border-radius: 5px; color: #667eea; font-weight: bold;">
                                <strong>Protocolos:</strong> <xsl:value-of select="protocolos"/>
                            </div>
                        </xsl:if>
                    </div>
                </xsl:for-each>
            </div>
            
            <!-- Modelo TCP/IP -->
            <h3 style="margin-top: 30px;">Modelo TCP/IP (4 Capas)</h3>
            <div class="subsection">
                <xsl:value-of select="modeloTCPIP/descripcion"/>
            </div>
            <div style="display: grid; grid-template-columns: 1fr; gap: 15px;">
                <xsl:for-each select="modeloTCPIP/capas/capa">
                    <div class="capa-osi">
                        <div class="capa-titulo">
                            <xsl:value-of select="@nombre"/>
                        </div>
                        <xsl:if test="funcion">
                            <div style="margin: 10px 0; color: #555;">
                                <xsl:value-of select="funcion"/>
                            </div>
                        </xsl:if>
                        <xsl:if test="protocolos">
                            <div style="background: #f8f9ff; padding: 10px; border-radius: 5px; color: #667eea;">
                                <strong>Protocolos:</strong> <xsl:value-of select="protocolos"/>
                            </div>
                        </xsl:if>
                        <xsl:if test="servicios">
                            <div style="background: #f8f9ff; padding: 10px; border-radius: 5px; color: #667eea; margin-top: 10px;">
                                <strong>Servicios:</strong> <xsl:value-of select="servicios"/>
                            </div>
                        </xsl:if>
                    </div>
                </xsl:for-each>
            </div>
        </section>
    </xsl:template>
    
    <!-- PROTOCOLOS DE COMUNICACIÓN -->
    <xsl:template match="protocolosComunicacion">
        <section>
            <h2>Protocolos de Comunicación</h2>
            
            <div class="subsection">
                <xsl:value-of select="descripcion"/>
            </div>
            
            <!-- Protocolos de Transporte -->
            <h3>Protocolos de Transporte</h3>
            <xsl:for-each select="protocolosTransporte/protocolo">
                <div class="tecnologia">
                    <div class="tecnologia-nombre">
                        <xsl:value-of select="@nombre"/>
                    </div>
                    <xsl:if test="caracteristicas">
                        <div class="caracteristicas">
                            <strong>Características:</strong>
                            <ul>
                                <xsl:for-each select="caracteristicas/item">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </xsl:if>
                    <xsl:if test="usos">
                        <div class="caracteristicas">
                            <strong>Usos:</strong> <xsl:value-of select="usos"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="desventaja">
                        <div class="caracteristicas" style="background: #ffe0e0; border-left-color: #764ba2;">
                            <strong>Desventaja:</strong> <xsl:value-of select="desventaja"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="ventaja">
                        <div class="caracteristicas" style="background: #e0ffe0; border-left-color: #00aa00;">
                            <strong>Ventaja:</strong> <xsl:value-of select="ventaja"/>
                        </div>
                    </xsl:if>
                </div>
            </xsl:for-each>
            
            <!-- Tabla Comparativa TCP vs UDP -->
            <xsl:if test="protocolosTransporte/tablaComparativaTCPvsUDP">
                <h3 style="margin-top: 30px;">Comparativa TCP vs UDP</h3>
                <table>
                    <tr>
                        <th>Característica</th>
                        <th>TCP</th>
                        <th>UDP</th>
                    </tr>
                    <xsl:for-each select="protocolosTransporte/tablaComparativaTCPvsUDP/fila">
                        <tr>
                            <td><strong><xsl:value-of select="caracteristica"/></strong></td>
                            <td><xsl:value-of select="tcp"/></td>
                            <td><xsl:value-of select="udp"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </xsl:if>
            
            <!-- Protocolos de Aplicación -->
            <h3>Protocolos de Aplicación y Red</h3>
            <xsl:for-each select="protocolosAplicacionYRed/protocolo">
                <div class="mecanismo">
                    <div class="mecanismo-nombre">
                        <xsl:value-of select="@nombre"/>
                    </div>
                    <div style="color: #555;">
                        <xsl:value-of select="descripcion"/>
                    </div>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>
    
    <!-- SEGURIDAD -->
    <xsl:template match="seguridad">
        <section>
            <h2>Seguridad en Redes</h2>
            
            <div class="subsection">
                <xsl:value-of select="descripcion"/>
            </div>
            
            <h3>Mecanismos de Seguridad</h3>
            <xsl:for-each select="mecanismos/mecanismo">
                <div class="mecanismo">
                    <div class="mecanismo-nombre">
                        <xsl:value-of select="@nombre"/>
                    </div>
                    <div style="color: #555; line-height: 1.8;">
                        <xsl:value-of select="descripcion"/>
                    </div>
                </div>
            </xsl:for-each>
            
            <h3>Defensa en Profundidad</h3>
            <div style="background: linear-gradient(135deg, #e0e7ff 0%, #f3e8ff 100%); padding: 20px; border-radius: 8px; border-left: 5px solid #667eea;">
                <div style="font-weight: bold; color: #667eea; margin-bottom: 10px;">
                    <xsl:value-of select="principio/@nombre"/>
                </div>
                <div style="color: #555; line-height: 1.8;">
                    <xsl:value-of select="principio/descripcion"/>
                </div>
            </div>
        </section>
    </xsl:template>
    
    <!-- TOPOLOGÍAS Y MODOS DE CONEXIÓN -->
    <xsl:template match="topologiasYModosConexion">
        <section>
            <h2>Topologías y Modos de Conexión</h2>
            
            <h3>Topologías de Red</h3>
            <xsl:for-each select="topologias/topologia">
                <div class="topologia-card">
                    <div class="topologia-nombre">
                        <xsl:value-of select="@nombre"/>
                    </div>
                    <xsl:if test="descripcion">
                        <div style="margin-bottom: 10px; color: #555;">
                            <xsl:value-of select="descripcion"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="ventajas">
                        <div class="caracteristicas" style="background: #e0ffe0; border-left-color: #00aa00;">
                            <strong>✓ Ventajas:</strong> <xsl:value-of select="ventajas"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="desventajas">
                        <div class="caracteristicas" style="background: #ffe0e0; border-left-color: #ff0000;">
                            <strong>✗ Desventajas:</strong> <xsl:value-of select="desventajas"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="usos">
                        <div class="caracteristicas">
                            <strong>Usos:</strong> <xsl:value-of select="usos"/>
                        </div>
                    </xsl:if>
                </div>
            </xsl:for-each>
            
            <!-- Tabla de Topologías -->
            <xsl:if test="topologias/tablaTopologias">
                <h3 style="margin-top: 30px;">Tabla de Topologías</h3>
                <table>
                    <tr>
                        <th>Topología</th>
                        <th>Descripción Visual</th>
                        <th>Ventaja Principal</th>
                        <th>Desventaja Principal</th>
                    </tr>
                    <xsl:for-each select="topologias/tablaTopologias/fila">
                        <tr>
                            <td><strong><xsl:value-of select="topologia"/></strong></td>
                            <td><xsl:value-of select="descripcionVisual"/></td>
                            <td><xsl:value-of select="ventajaPrincipal"/></td>
                            <td><xsl:value-of select="desventajaPrincipal"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </xsl:if>
            
            <!-- Modos de Conexión -->
            <h3>Modos de Conexión</h3>
            <xsl:for-each select="modosConexion/modo">
                <div class="topologia-card">
                    <div class="topologia-nombre">
                        <xsl:value-of select="@nombre"/>
                    </div>
                    <div style="margin-bottom: 10px;">
                        <strong>Protocolo Ejemplo:</strong> <xsl:value-of select="protocoloEjemplo"/>
                    </div>
                    <xsl:if test="funcionamiento">
                        <div class="caracteristicas">
                            <strong>Funcionamiento:</strong> <xsl:value-of select="funcionamiento"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="caracteristicas">
                        <div class="caracteristicas">
                            <strong>Características:</strong> <xsl:value-of select="caracteristicas"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="ventajas">
                        <div class="caracteristicas" style="background: #e0ffe0; border-left-color: #00aa00;">
                            <strong>✓ Ventajas:</strong> <xsl:value-of select="ventajas"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="desventajas">
                        <div class="caracteristicas" style="background: #ffe0e0; border-left-color: #ff0000;">
                            <strong>✗ Desventajas:</strong> <xsl:value-of select="desventajas"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="usosIdeal">
                        <div class="caracteristicas">
                            <strong>Usos Ideales:</strong> <xsl:value-of select="usosIdeal"/>
                        </div>
                    </xsl:if>
                </div>
            </xsl:for-each>
        </section>
    </xsl:template>
    
    <!-- COMPONENTES HARDWARE -->
    <xsl:template match="componentesHardware">
        <section>
            <h2>Componentes y Hardware de Red</h2>
            
            <!-- Medios de Transmisión Cableados -->
            <h3>Medios de Transmisión Cableados</h3>
            <xsl:for-each select="mediosTransmisionCableados/tecnologia">
                <div class="tecnologia">
                    <div class="tecnologia-nombre">
                        <xsl:value-of select="@nombre"/>
                    </div>
                    <xsl:if test="descripcion">
                        <div style="margin-bottom: 10px; color: #555;">
                            <xsl:value-of select="descripcion"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="variantes">
                        <div class="caracteristicas">
                            <strong>Variantes:</strong>
                            <ul>
                                <xsl:for-each select="variantes/variante">
                                    <li>
                                        <strong><xsl:value-of select="@nombre"/>:</strong>
                                        <xsl:text> </xsl:text>
                                        <xsl:value-of select="."/>
                                    </li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </xsl:if>
                </div>
            </xsl:for-each>
            
            <!-- Estándares Wi-Fi -->
            <h3>Estándares Wi-Fi</h3>
            <div class="subsection">
                <xsl:value-of select="estandaresWiFi/descripcion"/>
            </div>
            <xsl:for-each select="estandaresWiFi/estandar">
                <div class="tecnologia">
                    <div class="tecnologia-nombre">
                        <xsl:value-of select="@nombre"/>
                    </div>
                    <xsl:if test="banda">
                        <div style="margin-bottom: 10px;">
                            <strong>Banda:</strong> <xsl:value-of select="banda"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="velocidad">
                        <div style="margin-bottom: 10px; color: #667eea; font-weight: bold;">
                            <xsl:value-of select="velocidad"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="problema">
                        <div class="caracteristicas" style="background: #ffe0e0; border-left-color: #ff0000;">
                            <xsl:value-of select="problema"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="caracteristica">
                        <div class="caracteristicas">
                            <xsl:value-of select="caracteristica"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="caracteristicas">
                        <div class="caracteristicas">
                            <strong>Características:</strong>
                            <ul>
                                <xsl:for-each select="caracteristicas/item">
                                    <li><xsl:value-of select="."/></li>
                                </xsl:for-each>
                            </ul>
                        </div>
                    </xsl:if>
                    <xsl:if test="periodo">
                        <div style="color: #666; font-size: 0.9em; margin-top: 10px;">
                            <strong>Período:</strong> <xsl:value-of select="periodo"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="idealPara">
                        <div class="caracteristicas">
                            <strong>Ideal para:</strong> <xsl:value-of select="idealPara"/>
                        </div>
                    </xsl:if>
                    <xsl:if test="comentario">
                        <div style="background: linear-gradient(135deg, #e0e7ff 0%, #f3e8ff 100%); padding: 10px; border-radius: 5px; color: #667eea; font-style: italic; margin-top: 10px;">
                            <xsl:value-of select="comentario"/>
                        </div>
                    </xsl:if>
                </div>
            </xsl:for-each>
            
            <!-- Tabla de Componentes -->
            <h3 style="margin-top: 30px;">Tabla de Componentes de Red</h3>
            <table>
                <tr>
                    <th>Medio</th>
                    <th>Tipo</th>
                    <th>Velocidad/Alcance</th>
                    <th>Caso de Uso</th>
                </tr>
                <xsl:for-each select="tablaComponentesRed/fila">
                    <tr>
                        <td><strong><xsl:value-of select="medio"/></strong></td>
                        <td><xsl:value-of select="tipo"/></td>
                        <td><xsl:value-of select="velocidadAlcance"/></td>
                        <td><xsl:value-of select="casoUso"/></td>
                    </tr>
                </xsl:for-each>
            </table>
        </section>
    </xsl:template>
</xsl:stylesheet>
