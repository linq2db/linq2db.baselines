BeforeExecute
-- Firebird.5 Firebird4

UPDATE
	"DestinationTable"
SET
	"Id" = (
		SELECT
			"s_1"."Id"
		FROM
			"TableWithData" "s_1"
				INNER JOIN "DestinationTable" "t_1" ON "t_1"."Id" = "s_1"."Id"
		WHERE
			"DestinationTable"."Id" = "t_1"."Id" AND "DestinationTable"."Value" = "t_1"."Value" AND
			("DestinationTable"."ValueStr" = "t_1"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_1"."ValueStr" IS NULL)
	),
	"Value" = (
		SELECT
			"s_2"."Value"
		FROM
			"TableWithData" "s_2"
				INNER JOIN "DestinationTable" "t_2" ON "t_2"."Id" = "s_2"."Id"
		WHERE
			"DestinationTable"."Id" = "t_2"."Id" AND "DestinationTable"."Value" = "t_2"."Value" AND
			("DestinationTable"."ValueStr" = "t_2"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_2"."ValueStr" IS NULL)
	),
	"ValueStr" = (
		SELECT
			"s_3"."ValueStr"
		FROM
			"TableWithData" "s_3"
				INNER JOIN "DestinationTable" "t_3" ON "t_3"."Id" = "s_3"."Id"
		WHERE
			"DestinationTable"."Id" = "t_3"."Id" AND "DestinationTable"."Value" = "t_3"."Value" AND
			("DestinationTable"."ValueStr" = "t_3"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t_3"."ValueStr" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableWithData" "s"
				INNER JOIN "DestinationTable" "t" ON "t"."Id" = "s"."Id"
		WHERE
			"DestinationTable"."Id" = "t"."Id" AND "DestinationTable"."Value" = "t"."Value" AND
			("DestinationTable"."ValueStr" = "t"."ValueStr" OR "DestinationTable"."ValueStr" IS NULL AND "t"."ValueStr" IS NULL)
	)
RETURNING
	OLD."Value",
	NEW."Value"

