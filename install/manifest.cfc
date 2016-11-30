<cfcomponent extends="farcry.core.webtop.install.manifest" name="manifest">

	<cfset this.name = "Google API" />
	<cfset this.description = "<strong>Google API</strong> plugin for oAuth. To be used with other Google API Plugs that need oAuth." />
	<cfset this.lRequiredPlugins = "" />
	<cfset this.taglibraryprefix = "gapi" />
	<cfset addSupportedCore(majorVersion="6") />
	<cfset addSupportedCore(majorVersion="7") />

</cfcomponent>

