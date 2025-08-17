BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @p VarChar(8000) -- AnsiString
SET     @p = N'a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z'

SELECT
	[x].[Value]
FROM
	STRING_SPLIT(@p,',') [x]

