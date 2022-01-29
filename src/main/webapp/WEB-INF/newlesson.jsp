JSTL Formatting tags
The formatting tags provide support for message formatting, number and date formatting etc.
The url for the formatting tags is http://java.sun.com/jsp/jstl/fmt and prefix is fmt.

<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>

#1.JSTL Formatting <fmt:parseNumber> Tag
    The <fmt:parseNumber> tag is used to Parses the string representation of a currency,
        percentage, or number. It is based on the customized formatting pattern.

        The syntax used for including the <fmt:parseNumber> tag is:

            <fmt:parseNumber attributes> body content </fmt:parseNumber>
  example:
            <h3>The fmt:parseNumber tag Example is:</h3>

            <c:set var="Amount" value="786.970" />

            <fmt:parseNumber var="j" type="number" value="${Amount}" />
            <p><i>Amount is:</i>  <c:out value="${j}" /></p>

            <fmt:parseNumber var="j" integerOnly="true" type="number" value="${Amount}" />
            <p><i>Amount is:</i>  <c:out value="${j}" /></p>

 #2.JSTL Formatting <fmt:timeZone> Tag
                The <fmt:timeZone> tag specifies the parsing action nested in
                    its body or the time zone for any time formatting.
                    It is used for specify the time zone information used for time formatting operations.

                    The syntax used for including the <fmt:timeZone> tag is:

                        <fmt:timeZone attributes> body content </fmt:timeZone>

  example:
                        <c:set var="str" value="<%=new java.util.Date()%>" />
                        <table border="2" width="100%">
                        <tr>
                        <td width="100%" colspan="2" bgcolor="#FF7F50">
                        <p align="center">
                        <b>
                        <font color="#000000" size="6">Formatting:
                        <fmt:formatDate value="${str}" type="both"
                                        timeStyle="long" dateStyle="long" />
                        </font>
                        </b>
                        </p>
                        </td>
                        </tr>

                        <c:forEach var="zone"
                                   items="<%=java.util.TimeZone.getAvailableIDs()%>">
                            <tr>
                                <td width="50%"  bgcolor="#C0C0C0">
                                    <c:out value="${zone}" />
                                </td>
                                <td width="50%" bgcolor="#FFEBCD">
                                    <fmt:timeZone value="${zone}">
                                        <fmt:formatDate value="${str}" timeZone="${zn}"
                                                        type="both"/>
                                    </fmt:timeZone>
                                </td>
                            </tr>
                        </c:forEach>
                        </table>
#3.JSTL Formatting <fmt:formatNumber> Tag
The <fmt:formatNumber> tag is used to format the numerical
 value using the specific format or precision. It is used to format percentages,
currencies, and numbers according to the customized formatting pattern.
The syntax used for including the <fmt:formatNumber> tag is:

<fmt:formatNumber attributes> body content </fmt:formatNumber>
example:
                                    <h3>Formatting of Number:</h3>
                                    <c:set var="Amount" value="9850.14115" />
                                    <p> Formatted Number-1:
                                    <fmt:formatNumber value="${Amount}" type="currency" /></p>
                                    <p>Formatted Number-2:
                                    <fmt:formatNumber type="number" groupingUsed="true" value="${Amount}" /></p>
                                    <p>Formatted Number-3:
                                    <fmt:formatNumber type="number" maxIntegerDigits="3" value="${Amount}" /></p>
                                    <p>Formatted Number-4:
                                    <fmt:formatNumber type="number" maxFractionDigits="6" value="${Amount}" /></p>
                                    <p>Formatted Number-5:
                                    <fmt:formatNumber type="percent" maxIntegerDigits="4" value="${Amount}" /></p>
                                    <p>Formatted Number-6:
                                    <fmt:formatNumber type="number" pattern="###.###$" value="${Amount}" /></p>
#4.JSTL Formatting <fmt:parseDate> Tag
 The <fmt:parseDate> tag parses the string representation of a time and date.
 It is used to format the time and date according to a customized formatting pattern.

The syntax used for including the <fmt:parseDate> tag is:
<fmt:parseDate attributes/>
   example:
                                                <h3>Parsed Date:</h3>
                                                <c:set var="date" value="12-08-2016" />

                                                <fmt:parseDate value="${date}" var="parsedDate"  pattern="dd-MM-yyyy" />
                                                <p><c:out value="${parsedDate}" /></p>
#5.JSTL Formatting <fmt:bundle> Tag
The <fmt:bundle> tag loads the resource bundle which is used by its tag body.
This tag will make the specified bundle available for all <fmt:message> tags that occurs between the boundary of <fmt:bundle> and </fmt:bundle> tags.

It is used to create the ResourceBundle objects which will be used by their tag body.

The syntax used for including the <fmt:bundle> tag is:

 <fmt:bundle basename="Resource Bundle Name" prefix="msg"> body content </fmt:bundle>
 example:
    Simple.java
                                                                package
                                                                import java.util.ListResourceBundle;
                                                                public class Simple extends ListResourceBundle {
                                                                public Object[][] getContents() {
                                                                return contents;
                                                                }
                                                                static final Object[][] contents = { { "colour.Violet", "Violet" },
                                                                { "colour.Indigo", "Indigo" }, { "colour.Blue", "Blue" }, };
                                                                }     \
                                                                <fmt:bundle basename="com" prefix="colour.">
                                                                    <fmt:message key="Violet"/><br/>
                                                                    <fmt:message key="Indigo"/><br/>
                                                                    <fmt:message key="Blue"/><br/>

                                                                </fmt:bundle>
#6.JSTL Formatting <fmt:setTimeZone> Tag
 The <fmt:setTimeZone> tag store the time zone inside a time zone configuration variable.
It is used for copy a time zone object inside a specified scope variable.

 The syntax used for including the <fmt:setTimeZone> tag is:

 <fmt:setTimeZone value="value" var="var name" scope="scope"/>
  example:
                                                                            <c:set var="date" value="<%=new java.util.Date()%>" />
                                                                            <p><b>Date and Time in Indian Standard Time(IST) Zone:</b> <fmt:formatDate value="${date}"
                                                                                                                                                       type="both" timeStyle="long" dateStyle="long" /></p>
                                                                            <fmt:setTimeZone value="GMT-10" />
                                                                            <p><b>Date and Time in GMT-10 time Zone: </b><fmt:formatDate value="${date}"
                                                                                                                                         type="both" timeStyle="long" dateStyle="long" /></p>
#7.JSTL Formatting <fmt:setBundle> Tag
The <fmt:setBundle> tag is used to load the resource bundle and store their value in the bundle configuration variable or the name scope variable.

 It is used for creating the ResourceBundle object which will be used by tag body.

The syntax used for including the <fmt:setBundle> tag is:

<fmt:setBundle basename="ResourceBundle Name" var="value"/>
example:
                                                                                        package com.kulesh;
                                                                                        import java.util.ListResourceBundle;
                                                                                        public class Main extends ListResourceBundle {
                                                                                        public Object[][] getContents() {
                                                                                        return contents;
                                                                                        }
                                                                                        static final Object[][] contents = { { "vegetable.Potato", "Potato" },
                                                                                        { "vegetable.Tomato", "Tomato" }, { "vegetable.Carrot", "Carrot" }, };
                                                                                        }


                                                                                        <fmt:setBundle basename="com.kulesh.Main" var="lang"/>
                                                                                        <fmt:message key="vegetable.Potato" bundle="${lang}"/><br/>
                                                                                        <fmt:message key="vegetable.Tomato" bundle="${lang}"/><br/>
                                                                                        <fmt:message key="vegetable.Carrot" bundle="${lang}"/><br/>
  #8.JSTL Core <fmt:message> Tag
 The <fmt:message> tag is used for displaying an internationalized message. It maps the key of localized message to return the value using a resource bundle specified in the bundle attribute.

The syntax used for including the <fmt:message> tag is:
<fmt:message attributes> body content </fmt:message>
 example:
                                                                                                    package com.kulesh;
                                                                                                    import java.util.ListResourceBundle;
                                                                                                    public class Message extends ListResourceBundle {
                                                                                                    public Object[][] getContents() {
                                                                                                    return contents;
                                                                                                    }
                                                                                                    static final Object[][] contents = { { "vegetable.Potato", "Potato" },
                                                                                                    { "vegetable.Tomato", "Tomato" }, { "vegetable.Carrot", "Carrot" }, };
                                                                                                    }
                                                                                                    <fmt:setBundle basename="com.kulesh.Message" var="lang"/>
                                                                                                    <fmt:message key="vegetable.Potato" bundle="${lang}"/><br/>
                                                                                                    <fmt:message key="vegetable.Tomato" bundle="${lang}"/><br/>
                                                                                                    <fmt:message key="vegetable.Carrot" bundle="${lang}"/><br/>
 #9.JSTL Formatting <fmt:formatDate> Tag
The <fmt:formatDate> tag is used for different formats of date and time using the supplied pattern and styles. It is used to format the time and date according to the customized formatting pattern.

The syntax used for including the <fmt:formatDate> tag is:

 <fmt:formatDate attributes/>
  example:
                                                                                                                <h2>Different Formats of the Date</h2>
                                                                                                                <c:set var="Date" value="<%=new java.util.Date()%>" />
                                                                                                                <p>
                                                                                                                Formatted Time :
                                                                                                                <fmt:formatDate type="time" value="${Date}" />
                                                                                                                </p>
                                                                                                                <p>
                                                                                                                Formatted Date :
                                                                                                                <fmt:formatDate type="date" value="${Date}" />
                                                                                                                </p>
                                                                                                                <p>
                                                                                                                Formatted Date and Time :
                                                                                                                <fmt:formatDate type="both" value="${Date}" />
                                                                                                                </p>
                                                                                                                <p>
                                                                                                                Formatted Date and Time in short style :
                                                                                                                <fmt:formatDate type="both" dateStyle="short" timeStyle="short"
                                                                                                                                value="${Date}" />
                                                                                                                </p>
                                                                                                                <p>
                                                                                                                Formatted Date and Time in medium style :
                                                                                                                <fmt:formatDate type="both" dateStyle="medium" timeStyle="medium"
                                                                                                                                value="${Date}" />
                                                                                                                </p>
                                                                                                                <p>
                                                                                                                Formatted Date and Time in long style :
                                                                                                                <fmt:formatDate type="both" dateStyle="long" timeStyle="long"
                                                                                                                                value="${Date}" />
                                                                                                                </p>