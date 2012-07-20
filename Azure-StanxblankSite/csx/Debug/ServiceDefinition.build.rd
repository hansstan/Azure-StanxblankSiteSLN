<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="Azure_StanxblankSite" generation="1" functional="0" release="0" Id="a31f3561-4dbe-4131-8dff-dea576f5befd" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="Azure_StanxblankSiteGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="MyWebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/LB:MyWebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="MyWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/MapMyWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MyWebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/MapMyWebRoleInstances" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:MyWebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/MyWebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapMyWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/MyWebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMyWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/MyWebRoleInstances" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="MyWebRole" generation="1" functional="0" release="0" software="D:\projects\SampleCode\!Trash\Azure-StanxblankSiteSLN\Azure-StanxblankSite\csx\Debug\roles\MyWebRole" entryPoint="base\x64\WaHostBootstrapper.exe" parameters="base\x64\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MyWebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MyWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/MyWebRoleInstances" />
            <sCSPolicyFaultDomainMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/MyWebRoleFaultDomains" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyFaultDomain name="MyWebRoleFaultDomains" defaultPolicy="[2,2,2]" />
        <sCSPolicyID name="MyWebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="ac72d099-e238-4239-9806-bef34051393f" ref="Microsoft.RedDog.Contract\ServiceContract\Azure_StanxblankSiteContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="56ef1fb3-1060-4d15-afc7-693178ad308f" ref="Microsoft.RedDog.Contract\Interface\MyWebRole:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/Azure_StanxblankSite/Azure_StanxblankSiteGroup/MyWebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>