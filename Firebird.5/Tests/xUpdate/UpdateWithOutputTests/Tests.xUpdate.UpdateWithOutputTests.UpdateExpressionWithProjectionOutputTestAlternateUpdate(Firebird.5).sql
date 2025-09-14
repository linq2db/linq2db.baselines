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
			"DestinationTable"."Id" = "t_1"."Id"
	),
	"Value" = (
		SELECT
			"s_2"."Value"
		FROM
			"TableWithData" "s_2"
				INNER JOIN "DestinationTable" "t_2" ON "t_2"."Id" = "s_2"."Id"
		WHERE
			"DestinationTable"."Id" = "t_2"."Id"
	),
	"ValueStr" = (
		SELECT
			"s_3"."ValueStr"
		FROM
			"TableWithData" "s_3"
				INNER JOIN "DestinationTable" "t_3" ON "t_3"."Id" = "s_3"."Id"
		WHERE
			"DestinationTable"."Id" = "t_3"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableWithData" "s"
				INNER JOIN "DestinationTable" "t" ON "t"."Id" = "s"."Id"
		WHERE
			"DestinationTable"."Id" = "t"."Id"
	)
RETURNING
	OLD."Value",
	NEW."Value"

