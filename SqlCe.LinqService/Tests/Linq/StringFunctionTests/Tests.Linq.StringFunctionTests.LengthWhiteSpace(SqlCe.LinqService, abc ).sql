BeforeExecute
-- SqlCe
DECLARE @stringValue NVarChar(5) -- String
SET     @stringValue = ' abc '

SELECT
	@stringValue as [c1],
	LEN(@stringValue + '.') - 1 as [c2]

