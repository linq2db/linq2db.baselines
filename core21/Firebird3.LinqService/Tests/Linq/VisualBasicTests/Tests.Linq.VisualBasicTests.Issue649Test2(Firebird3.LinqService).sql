﻿BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "activity649"
(
	"activityid" Int        NOT NULL,
	"personid"   Int        NOT NULL,
	"added"      TimeStamp  NOT NULL,

	CONSTRAINT "PK_activity649" PRIMARY KEY ("activityid")
)

BeforeExecute
-- Firebird3 Firebird

CREATE GENERATOR "GIDENTITY_activity649"

BeforeExecute
-- Firebird3 Firebird

CREATE TRIGGER "TIDENTITY_activity649" FOR "activity649"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."activityid" = GEN_ID("GIDENTITY_activity649", 1);
END

BeforeExecute
-- Firebird3 Firebird

CREATE TABLE "person649"
(
	"personid"   Int                                     NOT NULL,
	"personname" VarChar(255) CHARACTER SET UNICODE_FSS  NOT NULL,

	CONSTRAINT "PK_person649" PRIMARY KEY ("personid")
)

BeforeExecute
-- Firebird3 Firebird

CREATE GENERATOR "GIDENTITY_person649"

BeforeExecute
-- Firebird3 Firebird

CREATE TRIGGER "TIDENTITY_person649" FOR "person649"
BEFORE INSERT POSITION 0
AS BEGIN
	NEW."personid" = GEN_ID("GIDENTITY_person649", 1);
END

BeforeExecute
-- Firebird3 Firebird
DECLARE @added TimeStamp -- DateTime
SET     @added = CAST('2017-01-01' AS timestamp)

SELECT
	"a_Person"."personid",
	"a_Person"."personname",
	Max("p"."added")
FROM
	"activity649" "p"
		INNER JOIN "person649" "a_Person" ON "p"."personid" = "a_Person"."personid"
WHERE
	"p"."added" >= @added
GROUP BY
	"a_Person"."personid",
	"a_Person"."personname"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_person649"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_person649"';
	EXECUTE STATEMENT 'DROP TABLE "person649"';
END

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	EXECUTE STATEMENT 'DROP TRIGGER "TIDENTITY_activity649"';
	EXECUTE STATEMENT 'DROP GENERATOR "GIDENTITY_activity649"';
	EXECUTE STATEMENT 'DROP TABLE "activity649"';
END

