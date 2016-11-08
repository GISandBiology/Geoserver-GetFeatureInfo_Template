<#list features as feature>
	<#list feature.attributes as attribute>
		<#if !attribute.isGeometry>
			<#if attribute.name == "specname">
				<#assign art = attribute.value>
			</#if>
			<#if attribute.name == "source">
				<#assign source = attribute.value>
			</#if>
		</#if>
	</#list>
</#list>

<div style="padding-top:5px;padding-bottom:5px;padding-left:5px;padding-right:5px">

	<b>
	<p>
	Distribution of <i>${art}</i>
	</b> 
	</p>
	
	<#if (source!?length > 0)>
	<p>
	Citation: <br/>
	${source}
	</p>
	</#if>
	
</div>	