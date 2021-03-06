﻿BeforeExecute
-- Firebird4 Firebird

CREATE TABLE "Issue1189Customer"
(
	ID   Int                                    NOT NULL,
	NAME VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,

	CONSTRAINT "PK_Issue1189Customer" PRIMARY KEY (ID)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @DateTime TimeStamp -- DateTime
SET     @DateTime = CAST('2020-02-29 17:54:55.123' AS timestamp)

SELECT
	"k_1".ID,
	"k_1".NAME,
	Cast(@DateTime as TimeStamp)
FROM
	"Issue1189Customer" "k_1"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue1189Customer')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue1189Customer"';
END

