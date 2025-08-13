BeforeExecute
-- Firebird.4 Firebird4

UPDATE
	"DestinationTable"
SET
	"Id" = (
		SELECT
			"t2"."Id"
		FROM
			"TableWithData" "t2"
				INNER JOIN "DestinationTable" "t_1" ON "t_1"."Id" = "t2"."Id"
		WHERE
			"t2"."Id" = 3 AND
			"DestinationTable"."Id" = "t_1"."Id" AND
			"DestinationTable"."Value" = "t_1"."Value" AND
			("DestinationTable"."ValueStr" = "t_1"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_1"."ValueStr" IS NULL)
	),
	"Value" = (
		SELECT
			"t3"."Value"
		FROM
			"TableWithData" "t3"
				INNER JOIN "DestinationTable" "t_2" ON "t_2"."Id" = "t3"."Id"
		WHERE
			"t3"."Id" = 3 AND
			"DestinationTable"."Id" = "t_2"."Id" AND
			"DestinationTable"."Value" = "t_2"."Value" AND
			("DestinationTable"."ValueStr" = "t_2"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_2"."ValueStr" IS NULL)
	),
	"ValueStr" = (
		SELECT
			"t4"."ValueStr"
		FROM
			"TableWithData" "t4"
				INNER JOIN "DestinationTable" "t_3" ON "t_3"."Id" = "t4"."Id"
		WHERE
			"t4"."Id" = 3 AND
			"DestinationTable"."Id" = "t_3"."Id" AND
			"DestinationTable"."Value" = "t_3"."Value" AND
			("DestinationTable"."ValueStr" = "t_3"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_3"."ValueStr" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableWithData" "t1"
				INNER JOIN "DestinationTable" "t" ON "t"."Id" = "t1"."Id"
		WHERE
			"t1"."Id" = 3 AND
			"DestinationTable"."Id" = "t"."Id" AND
			"DestinationTable"."Value" = "t"."Value" AND
			("DestinationTable"."ValueStr" = "t"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t"."ValueStr" IS NULL)
	)
RETURNING
	OLD."Value",
	NEW."Value"

