<%-- 
    Document   : books
    Created on : Jun 30, 2014, 10:23:29 AM
    Author     : frangel
--%>

<%@page import="bibliofilo.feed.FeedMessage"%>
<%@page import="bibliofilo.feed.Feed"%>
<%@page import="bibliofilo.feed.FeedParser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="template/header.jsp" %>
<ul class="list-group">
    
        
        <%
            FeedParser parser = new FeedParser("http://www.amazon.com/gp/rss/new-releases/books/ref=zg_bsnr_books_rsslink");
            Feed feed = parser.readFeed();
            System.out.println(feed);
            for (FeedMessage message : feed.getMessages()) {
             //out.println(message.getTitle());
        %>
        
            <div class="list-group-item">
<!--                <div class="photo">
                    <img src="http://lorempixel.com/350/260/technics/<%= message.getTitle()%>" class="img-responsive" alt="a" />
                </div>-->

                <h5>Nombre: <%= message.getDescription()%></h5>

            </div>
      
    
    <%
        }
    %>

    <ul


<%@ include file="template/footer.jsp"%>
