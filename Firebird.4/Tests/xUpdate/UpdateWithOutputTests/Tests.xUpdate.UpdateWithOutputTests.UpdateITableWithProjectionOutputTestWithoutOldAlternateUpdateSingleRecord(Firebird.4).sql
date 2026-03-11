-- Firebird.4 Firebird4

UPDATE
	"DestinationTable"
SET
	"Value" = (
		SELECT
			"t2"."Value"
		FROM
			"TableWithData" "t2"
				INNER JOIN "DestinationTable" "t_1" ON "t_1"."Id" = "t2"."Id"
		WHERE
			"t2"."Id" = 3 AND "DestinationTable"."Id" = "t_1"."Id"
	),
	"ValueStr" = (
		SELECT
			"t3"."ValueStr"
		FROM
			"TableWithData" "t3"
				INNER JOIN "DestinationTable" "t_2" ON "t_2"."Id" = "t3"."Id"
		WHERE
			"t3"."Id" = 3 AND "DestinationTable"."Id" = "t_2"."Id"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"TableWithData" "t1"
				INNER JOIN "DestinationTable" "t" ON "t"."Id" = "t1"."Id"
		WHERE
			"t1"."Id" = 3 AND "DestinationTable"."Id" = "t"."Id"
	)
RETURNING
	NEW."Value"

