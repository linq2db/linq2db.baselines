﻿BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Data VarChar(9) -- String
SET     @Data = '***III***'
DECLARE @ID Integer -- Int32
SET     @ID = 3

UPDATE
	"TrimTestTable" "t1"
SET
	"Data" = CAST(@Data AS VARCHAR(9))
WHERE
	"t1".ID = @ID

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Data VarChar(9) -- String
SET     @Data = '***OOO***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = CAST(@Data AS VARCHAR(9))
WHERE
	"t"."Data" = '***XXX***'

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @Data VarChar(9) -- String
SET     @Data = '***SSS***'
DECLARE @p VarChar(9) -- String
SET     @p = '***HHH***'

UPDATE
	"TrimTestTable" "t"
SET
	"Data" = CAST(@Data AS VARCHAR(9))
WHERE
	"t"."Data" = @p

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

