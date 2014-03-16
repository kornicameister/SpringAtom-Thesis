<%
	final StatelessSession statelessSession = HibernateBridge.getSessionFactory().openStatelessSession();
	final List<Unit> units = new ArrayList<>();
	List<?> data = statelessSession.getNamedQuery("getEmptyUnits").list();
	for (Object object : data) {
		if (object instanceof Unit) {
			units.add((Unit) object);
		}
	}
%>

<ul>
	<% for(final Unit unit : units) {%>
	<li>
		Jednostka <% unit.getName() %> jest pusta.
	</li>
	<% } %>
</ul>
