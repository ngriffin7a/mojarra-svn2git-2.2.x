<%--

    DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.

    Copyright (c) 1997-2010 Oracle and/or its affiliates. All rights reserved.

    The contents of this file are subject to the terms of either the GNU
    General Public License Version 2 only ("GPL") or the Common Development
    and Distribution License("CDDL") (collectively, the "License").  You
    may not use this file except in compliance with the License.  You can
    obtain a copy of the License at
    https://glassfish.dev.java.net/public/CDDL+GPL_1_1.html
    or packager/legal/LICENSE.txt.  See the License for the specific
    language governing permissions and limitations under the License.

    When distributing the software, include this License Header Notice in each
    file and include the License file at packager/legal/LICENSE.txt.

    GPL Classpath Exception:
    Oracle designates this particular file as subject to the "Classpath"
    exception as provided by Oracle in the GPL Version 2 section of the License
    file that accompanied this code.

    Modifications:
    If applicable, add the following below the License Header, with the fields
    enclosed by brackets [] replaced by your own identifying information:
    "Portions Copyright [year] [name of copyright owner]"

    Contributor(s):
    If you wish your version of this file to be governed by only the CDDL or
    only the GPL Version 2, indicate your decision by adding "[Contributor]
    elects to include this software in this distribution under the [CDDL or GPL
    Version 2] license."  If you don't indicate a single choice of license, a
    recipient has the option to distribute your version of this file under
    either the CDDL, the GPL Version 2 or to extend the choice of license to
    its licensees as provided above.  However, if you add GPL Version 2 code
    and therefore, elected the GPL Version 2 license, then the option applies
    only if the new code is made subject to such option by the copyright
    holder.

--%>



<%@ page contentType="text/html"%>

<HTML>
<HEAD>
<link rel="stylesheet" type="text/css"
            href='<%= request.getContextPath() + "/html.css" %>'>
</HEAD>
<body bgcolor="#c1cdc1">

    <%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
    <%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>

       <f:view renderKitId="HTML_BASIC" >  
          <f:loadBundle basename="demo.model.Resources" var="phaseBundle"/>
          <h:form id="form">
              <h:outputText styleClass="headerClass" value="Multiple RenderKits Demo" />
              <h:panelGrid columns="1">
                 <h:outputText styleClass="sectionClass" value="Background" />
              </h:panelGrid>
              <h:panelGrid columns="1">
                 <h:outputText value="#{phaseBundle.background1}" escape="false" />
                 <h:graphicImage url="/lifecycle-pages.gif" />
                 <h:outputText value="#{phaseBundle.background2}" escape="false" />
              </h:panelGrid>
              <h:panelGrid columns="1">
                 <h:outputText styleClass="sectionClass" value="Design Detail" />
                 <h:outputText value="#{phaseBundle.detail1}" escape="false" />
                 <h:graphicImage url="/life-demo.gif" />
                 <h:commandButton type="submit" value="Next" action="success" />
              </h:panelGrid>
          </h:form>
       </f:view>

</body>
</HTML>
