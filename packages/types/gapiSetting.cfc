<cfcomponent displayname="Google API configuration" hint="Configuration for Google oAuth" extends="farcry.core.packages.types.types" output="false" bObjectBroker="1">



	<cfproperty name="googleProxy" type="string"
		ftSeq="7" ftFieldset="Google Analytics API Access" ftLabel="Proxy"
		ftHelpSection="You will need to set up <a href='https://code.google.com/apis/console'>API access</a> to use this functionality. See redirect URL below"
		ftHint="If internet access is only available through a proxy, set here. Use the format '[username:password@]domain[:port]'.">

	<cfproperty name="googleClientID" type="string"
		ftSeq="8" ftFieldset="Google Analytics API Access" ftLabel="Client ID"
		ftHint="This should be copied exactly from the <a href='https://code.google.com/apis/console'>API Console</a>.">

	<cfproperty name="googleClientSecret" type="string"
		ftSeq="9" ftFieldset="Google Analytics API Access" ftLabel="Client Secret"
		ftHint="This should be copied exactly from the <a href='https://code.google.com/apis/console'>API Console</a>.">

	<cfproperty name="googleRefreshToken" type="string"
		ftSeq="10" ftFieldset="Google Analytics API Access" ftLabel="Refresh Token"
		ftType="googleOAuthToken"
		ftProxy="googleProxy"
		ftClientID="googleClientID"
		ftClientSecret="googleClientSecret"
		ftScope="https://www.googleapis.com/auth/analytics.readonly"
		ftWatch="googleProxy,googleClientID,googleClientSecret"
		ftHint="This is obtained from Google after you authorize FarCry for access to Google Analytics, and is used for ongoing API access.">





<!--- 	<cffunction name="afterSave" access="public" output="false" returntype="struct">
		<cfargument name="stProperties" type="struct" />

		<cfset var hostname = "" />

		<cfloop collection="#application.stPlugins.googleanalytics#" item="hostname">
			<cfif find(".", hostname)>
				<cfset structDelete(application.stPlugins.googleanalytics, hostname) />
			</cfif>
		</cfloop>

		<cfreturn arguments.stProperties />
	</cffunction> --->

	<cffunction name="autoSetLabel" access="public" output="false" returntype="string" hint="Automagically sets the label">
		<cfargument name="stProperties" required="true" type="struct">


			<cfreturn arguments.stProperties.googleClientID />

	</cffunction>


</cfcomponent>