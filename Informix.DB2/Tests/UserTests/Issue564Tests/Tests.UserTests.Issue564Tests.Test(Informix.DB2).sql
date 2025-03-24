﻿BeforeExecute
--  Informix.DB2 Informix
DECLARE @Type VarChar(9) -- String
SET     @Type = 'Child564A'
DECLARE @StringValue VarChar(9) -- String
SET     @StringValue = 'SomeValue'

INSERT INTO Parent564
(
	"Type",
	StringValue
)
VALUES
(
	@Type,
	@StringValue
)

BeforeExecute
--  Informix.DB2 Informix
DECLARE @Type VarChar(9) -- String
SET     @Type = 'Child564B'
DECLARE @IntValue Integer(4) -- Int32
SET     @IntValue = 911

INSERT INTO Parent564
(
	"Type",
	IntValue
)
VALUES
(
	@Type,
	@IntValue
)

BeforeExecute
--  Informix.DB2 Informix

SELECT
	COUNT(*)
FROM
	Parent564 t1

