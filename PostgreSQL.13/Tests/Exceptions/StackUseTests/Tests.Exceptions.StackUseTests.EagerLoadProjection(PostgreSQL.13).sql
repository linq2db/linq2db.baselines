-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Field",
	"a_SubTable3"."Id",
	"a_SubTable3"."FK",
	"a_SubTable3"."Field",
	"a_SubTable5"."Id",
	"a_SubTable5"."FK",
	"a_SubTable5"."Field",
	"a_SubTable2"."Id",
	"a_SubTable2"."FK",
	"a_SubTable2"."Field",
	"a_SubTable4"."Id",
	"a_SubTable4"."FK",
	"a_SubTable4"."Field",
	"a_SubTable1"."Id",
	"a_SubTable1"."FK",
	"a_SubTable1"."Field",
	"a_SubTable2_1"."Id",
	"a_SubTable2_1"."FK",
	"a_SubTable2_1"."Field",
	"a_SubTable3_1"."Id",
	"a_SubTable3_1"."FK",
	"a_SubTable3_1"."Field",
	"a_SubTable3_2"."Id",
	"a_SubTable3_2"."FK",
	"a_SubTable3_2"."Field",
	"a_SubTable5_1"."Id",
	"a_SubTable5_1"."FK",
	"a_SubTable5_1"."Field",
	"a_SubTable2_2"."Id",
	"a_SubTable2_2"."FK",
	"a_SubTable2_2"."Field",
	"a_SubTable4_1"."Id",
	"a_SubTable4_1"."FK",
	"a_SubTable4_1"."Field",
	"a_SubTable1_1"."Id",
	"a_SubTable1_1"."FK",
	"a_SubTable1_1"."Field",
	"a_SubTable4_2"."Id",
	"a_SubTable4_2"."FK",
	"a_SubTable4_2"."Field"
FROM
	"AssociationChainRoot" t1
		LEFT JOIN "AssociationChainNode03" "a_SubTable3" ON t1."Id" = "a_SubTable3"."FK"
		LEFT JOIN "AssociationChainNode05" "a_SubTable5" ON "a_SubTable3"."Id" = "a_SubTable5"."FK"
		LEFT JOIN "AssociationChainNode02" "a_SubTable2" ON "a_SubTable5"."Id" = "a_SubTable2"."FK"
		LEFT JOIN "AssociationChainNode04" "a_SubTable4" ON "a_SubTable2"."Id" = "a_SubTable4"."FK"
		LEFT JOIN "AssociationChainNode01" "a_SubTable1" ON "a_SubTable4"."Id" = "a_SubTable1"."FK"
		LEFT JOIN "AssociationChainNode02" "a_SubTable2_1" ON "a_SubTable1"."Id" = "a_SubTable2_1"."FK"
		LEFT JOIN "AssociationChainNode03" "a_SubTable3_1" ON "a_SubTable2_1"."Id" = "a_SubTable3_1"."FK"
		LEFT JOIN "AssociationChainNode03" "a_SubTable3_2" ON "a_SubTable3_1"."Id" = "a_SubTable3_2"."FK"
		LEFT JOIN "AssociationChainNode05" "a_SubTable5_1" ON "a_SubTable3_2"."Id" = "a_SubTable5_1"."FK"
		LEFT JOIN "AssociationChainNode02" "a_SubTable2_2" ON "a_SubTable5_1"."Id" = "a_SubTable2_2"."FK"
		LEFT JOIN "AssociationChainNode04" "a_SubTable4_1" ON "a_SubTable2_2"."Id" = "a_SubTable4_1"."FK"
		LEFT JOIN "AssociationChainNode01" "a_SubTable1_1" ON "a_SubTable4_1"."Id" = "a_SubTable1_1"."FK"
		LEFT JOIN "AssociationChainNode04" "a_SubTable4_2" ON "a_SubTable1_1"."Id" = "a_SubTable4_2"."FK"

