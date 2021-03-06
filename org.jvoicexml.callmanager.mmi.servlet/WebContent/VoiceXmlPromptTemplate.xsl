<?xml version="1.0"?>
  <!--
    - Platform configurations for the JVoiceXML VoiceXML interpreter.
    - Copyright (C) 2011-2014 JVoiceXML group
    - http://jvoicexml.sourceforge.net
    -
    - This library is free software; you can redistribute it and/or
    - modify it under the terms of the GNU Library General Public
    - License as published by the Free Software Foundation; either
    - version 2 of the License, or (at your option) any later version.
    -
    - This library is distributed in the hope that it will be useful,
    - but WITHOUT ANY WARRANTY; without even the implied warranty of
    - MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
    - Library General Public License for more details.
    -
    - You should have received a copy of the GNU Library General Public
    - License along with this library; if not, write to the Free Software
    - Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
  -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:template match="/">
<vxml xmlns="http://www.w3.org/2001/vxml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="2.1" xml:lang="en-US" xsi:schematicLocation="http://www.w3.org/2001/vxml http://www.w3.org/TR/voicexml20/vxml.xsd">
    <form>
        <block>
            <xsl:apply-templates select="@*|*|text()|comment()" />
        </block>
    </form>
</vxml>
  </xsl:template>

  <!-- This template passes anything unmatched -->
  <xsl:template match="@*|*|text()|comment()">
    <xsl:copy>
      <xsl:apply-templates select="@*|*|text()|comment()" />
    </xsl:copy>
  </xsl:template>

</xsl:stylesheet>
