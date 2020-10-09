BeforeExecute
-- Firebird

CREATE TABLE "Isue2424Table"
(
	"Id"       Int                                    NOT NULL,
	"StrValue" VarChar(255) CHARACTER SET UNICODE_FSS
)

BeforeExecute
-- Firebird

INSERT INTO "Isue2424Table"
(
	"Id",
	"StrValue"
)
SELECT 1,'1' FROM rdb$database UNION ALL
SELECT 3,'3' FROM rdb$database UNION ALL
SELECT 5,'5' FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" = '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" = '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '2'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '4'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" < '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" > '3'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '5'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" >= '5'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '1'

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT FIRST @take 
	"i"."Id", 
	"i"."StrValue"
FROM
	"Isue2424Table" "i"
WHERE
	"i"."StrValue" <= '1'

BeforeExecute
-- Firebird

DROP TABLE "Isue2424Table"

