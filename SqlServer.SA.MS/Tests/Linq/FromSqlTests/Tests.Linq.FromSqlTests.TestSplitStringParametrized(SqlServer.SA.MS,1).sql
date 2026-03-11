-- SqlServer.SA.MS SqlServer.2019
DECLARE @p NVarChar(4000) -- String
SET     @p = N'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z'

SELECT
	[x].[Value]
FROM
	STRING_SPLIT(@p,',') [x]

