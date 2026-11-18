-- Firebird.4 Firebird4
SET TIME ZONE '+00:00'

-- Firebird.4 Firebird4
SELECT
	Extract(year from Coalesce("j"."Moment", TIMESTAMP '0001-01-01 00:00:00.0000'))
FROM
	"MissedMomentEntity" "e"
		LEFT JOIN "MissedMomentEntity" "j" ON "j"."Id" = "e"."Id" + 1000

-- Firebird.4 Firebird4
SET TIME ZONE LOCAL

