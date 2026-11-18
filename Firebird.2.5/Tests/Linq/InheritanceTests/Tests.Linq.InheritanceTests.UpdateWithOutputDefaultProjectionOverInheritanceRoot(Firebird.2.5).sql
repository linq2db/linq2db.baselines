-- Firebird.2.5 Firebird
UPDATE
	"InheritanceFilter" "t"
SET
	"Code" = "t"."Code"
WHERE
	"t"."Id" = 1
RETURNING
	OLD."Id",
	OLD."Code",
	OLD."Child1Field",
	OLD."Child2Field",
	OLD."Grandchild11Field",
	OLD."Grandchild12Field",
	OLD."Grandchild21Field",
	OLD."Grandchild22Field",
	NEW."Id",
	NEW."Code",
	NEW."Child1Field",
	NEW."Child2Field",
	NEW."Grandchild11Field",
	NEW."Grandchild12Field",
	NEW."Grandchild21Field",
	NEW."Grandchild22Field"

