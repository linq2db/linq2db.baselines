BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "TableWithGuid"
(
	"Guid" CHAR(16) CHARACTER SET OCTETS          NOT NULL,
	"Data" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @guid Guid
SET     @guid = '5f477286-d169-4596-babe-85f3e9c78a32'

INSERT INTO "TableWithGuid"
(
	"Guid",
	"Data"
)
VALUES
(
	@guid,
	'My data'
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @guid Guid
SET     @guid = '5f477286-d169-4596-babe-85f3e9c78a32'

SELECT FIRST @take
	"x"."Data"
FROM
	"TableWithGuid" "x"
WHERE
	"x"."Guid" = @guid

BeforeExecute
-- Firebird3 Firebird

DROP TABLE "TableWithGuid"

