<% if $Menu(2) %>
	<div class="$css sidebar">
		<% with $Level(1) %>
			<h3>
				$MenuTitle
			</h3>
			<ul>
				<% include SidebarMenu %>
			</ul>
		<% end_with %>
		</div>
<% end_if %>

