BeforeExecute
-- Firebird

CREATE TABLE "TableWithGuid"
(
	"Guid" CHAR(16) CHARACTER SET OCTETS          NOT NULL,
	"Data" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird
DECLARE @guid Guid
SET     @guid = '50c608ff-b85f-49ad-9bc2-a21138a952d5'

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
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @guid Guid
SET     @guid = '50c608ff-b85f-49ad-9bc2-a21138a952d5'

SELECT FIRST @take
	"x"."Data"
FROM
	"TableWithGuid" "x"
WHERE
	"x"."Guid" = @guid

BeforeExecute
-- Firebird

DROP TABLE "TableWithGuid"

