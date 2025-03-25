BeforeExecute
-- SqlCe
DECLARE @stringValue NVarChar(1) -- String
SET     @stringValue = ' '

SELECT
	@stringValue as [c1],
	LEN(@stringValue + '.') - 1 as [c2]

