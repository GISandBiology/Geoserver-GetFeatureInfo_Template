<#list features as feature>
	<#list feature.attributes as attribute>
		<#if !attribute.isGeometry>
			<#if attribute.name == "herbarium">
				<#assign herbarium = attribute.value>
			</#if>
			<#if attribute.name == "herbar_ID">
				<#assign herbar_ID = attribute.value>
			</#if>
			<#if attribute.name == "species">
				<#assign art = attribute.value>
			</#if>
			<#if attribute.name == "autor">
				<#assign autor = attribute.value>
			</#if>
			<#if attribute.name == "orig_herb">
				<#assign orig_herb = attribute.value>
			</#if>
			<#if attribute.name == "coll_date">
				<#assign coll_date = attribute.value>
			</#if>
			<#if attribute.name == "leg.">
				<#assign leg = attribute.value>
			</#if>
			<#if attribute.name == "country">
				<#assign country = attribute.value>
			</#if>
			<#if attribute.name == "state">
				<#assign state = attribute.value>
			</#if>
			<#if attribute.name == "location">
				<#assign location = attribute.value>
			</#if>
		</#if>
	</#list>
</#list>

<div style="padding-top:5px;padding-bottom:5px;padding-left:5px;padding-right:5px">

	<b><p>Herbarium - ${herbarium}</b> 
	<br />
	ID: Bryo# ${herbar_ID}</p>
	
	<p>
	<i><b>${art}</b></i> ${autor}
	</p>
	
	<#if (orig_herb!?length > 0)>
	<p>
	Original Herbar: ${orig_herb}
	</p>
	</#if>
	
	<p>
	Country: ${country}
	<br />
	Location: ${state}. ${location}
	</p>
	
	<p>
	Collection date: ${coll_date}
	<br />
	Collected by: ${leg}
	</p>
	
</div>	