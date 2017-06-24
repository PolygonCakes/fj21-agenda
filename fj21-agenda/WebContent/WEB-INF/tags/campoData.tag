<%@ attribute name="id" required="true"%>
<%@ attribute name="className" required="true"%>

<input type="text" id="${id}" name="${id}" class="${className}" />
<script>
	$("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>