-- Oracle.11.Managed Oracle11

UPDATE
	"Issue4132Table" row_1
SET
	"Id" = row_1."Id",
	"Number" = row_1."Number",
	"Text" = 'updated recently'
WHERE
	row_1."Number" = 1

