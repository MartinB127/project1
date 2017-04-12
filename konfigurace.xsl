<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
		<xsl:output method="text"/>
		<xsl:template match="/">
		[
			
			<xsl:for-each select="Konfigurace">
			"Konfigurace":{
			"Jazyk": "<xsl:value-of select="@Jazyk"/>",
			"Video":{
            <xsl:for-each select="Video">
            	"Rozliseni": "<xsl:value-of select="Rozliseni"/>",
				"Display_mode": "<xsl:value-of select="Display_mode"/>",
				"Kvalita_vykreslovani": "<xsl:value-of select="Kvalita_vykreslovani"/>",
				"Snimkova_frekvence": "<xsl:value-of select="Snimkova_frekvence"/>",
				"Stiny": "<xsl:value-of select="Stiny"/>",
				"Jas": "<xsl:value-of select="Jas"/>",
				"Kvalita_textur": "<xsl:value-of select="Kvalita_textur"/>",
				"Hloubka_ostrosti": "<xsl:value-of select="Hloubka_ostrosti"/>",
				"Priblizeni_kamery": "<xsl:value-of select="Priblizeni_kamery"/>",
				"MSAA": "<xsl:value-of select="MSAA"/>",
				"VSYNC": "<xsl:value-of select="VSYNC"/>"
            </xsl:for-each>
            },
            "Audio":{
            <xsl:for-each select="Audio">
            	"Hlasitost_aplikace": "<xsl:value-of select="Hlasitost_aplikace"/>",
				"Hlasitost_dialogu": "<xsl:value-of select="Hlasitost_dialogu"/>",
				"Hlasitost_hudby": "<xsl:value-of select="Hlasitost_hudby"/>",
				"Titulky": "<xsl:value-of select="Titulky"/>",
				"Jazyk_titulku":{
				<xsl:for-each select="Jazyk_titulku">
					"Titulky_jazyk": "<xsl:value-of select="@Titulky_jazyk"/>"
				}
				</xsl:for-each>
 			</xsl:for-each>
            },
            "Ovladani":{
            <xsl:for-each select="Ovladani">
            	"Ovladac": "<xsl:value-of select="@Ovladac"/>",
            	"Pohyb":{
            	<xsl:for-each select="Pohyb">
  					"Pohyb_dopredu": "<xsl:value-of select="Pohyb_dopredu"/>",
					"Pohyb_dozadu": "<xsl:value-of select="Pohyb_dozadu"/>",
					"Pohyb_doprava": "<xsl:value-of select="Pohyb_doprava"/>",
					"Pohyb_doleva": "<xsl:value-of select="Pohyb_doleva"/>",
					"Vyskok": "<xsl:value-of select="Vyskok"/>",
					"Kleknuti": "<xsl:value-of select="Kleknuti"/>",
					"Lehnuti": "<xsl:value-of select="Lehnuti"/>",
					"Sprint": "<xsl:value-of select="Sprint"/>"
                </xsl:for-each>
                },
                "Akce":{
                <xsl:for-each select="Akce">
  					"Strelba": "<xsl:value-of select="Strelba"/>",
					"Zaostrit": "<xsl:value-of select="Zaostrit"/>",
					"Prepnuti_vybavy": "<xsl:value-of select="Prepnuti_vybavy"/>",
					"Nuz": "<xsl:value-of select="Nuz"/>",
					"Reload": "<xsl:value-of select="Reload"/>",
					"Zoom": "<xsl:value-of select="Zoom"/>",
					"Mapa": "<xsl:value-of select="Mapa"/>"
                </xsl:for-each>
                },
                "Citlivost_mysi": "<xsl:value-of select="Citlivost_mysi"/>",
				"Invertovat_mys": "<xsl:value-of select="Invertovat_mys"/>",
				"Vibrace": "<xsl:value-of select="Vibrace"/>",
				"Profil_ovladani":{
				<xsl:for-each select="Profil_ovladani">
					"Profil": "<xsl:value-of select="@Profil"/>"
				}
 				</xsl:for-each>
 			</xsl:for-each>
 			},
 			"Ostatni":{
            <xsl:for-each select="Ostatni">
                "Obtiznost": "<xsl:value-of select="Obtiznost"/>",
				"Napoveda": "<xsl:value-of select="Napoveda"/>",
				"Radar": "<xsl:value-of select="Radar"/>",
				"Automaticke_ukladani": "<xsl:value-of select="Automaticke_ukladani"/>"
 			</xsl:for-each>
 			},
 			"Online_nastaveni":{
            <xsl:for-each select="Online_nastaveni">
            	"Hrac":{
            	<xsl:for-each select="Hrac">
            		"Nick": "<xsl:value-of select="Nick"/>",
                	"Jmeno": "<xsl:value-of select="Jmeno"/>",
                	"Prijmeni": "<xsl:value-of select="Prijmeni"/>",
					"Heslo": "<xsl:value-of select="Heslo"/>",
					"Email": "<xsl:value-of select="Email"/>",
					"Id": "<xsl:value-of select="@Id"/>",
					"Zeme": "<xsl:value-of select="@Zeme"/>",
					"Status": "<xsl:value-of select="@Status"/>"
            	</xsl:for-each>
            	},
				"Text_chat": "<xsl:value-of select="Text_chat"/>",
				"Mikrofon": "<xsl:value-of select="Mikrofon"/>",
				"Hodnoceni":{
				<xsl:for-each select="Hodnoceni">
					"Uroven": "<xsl:value-of select="@Uroven"/>",
					"Score": "<xsl:value-of select="@Score"/>",
					"Odehrano_hodin": "<xsl:value-of select="@Odehrano_hodin"/>"
				</xsl:for-each>
				}
			</xsl:for-each>
			}
			}<xsl:if test="position() !=last()">,</xsl:if>
			</xsl:for-each>

		]
		</xsl:template>
</xsl:stylesheet>