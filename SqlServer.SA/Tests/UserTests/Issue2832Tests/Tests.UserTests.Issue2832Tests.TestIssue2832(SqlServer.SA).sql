(499135) SELECT 
	t499135.Id = t499134.Id
FROM [DctSetpointtype(499134)] as t499134 (spt)
		LEFT JOIN (
			[VWellTree(499137)] as t499137 (t2)
				INNER JOIN [DctOu(499139)] as t499139 (tp2) ON ({t499137.ShopId?}? = {t499139.Id})
				LEFT JOIN [UacUsersDatagroup(499142)] as t499142 (cudg) ON ({t499139.Id} = {t499142.DatagroupId} AND {t499142.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(499147)] as t499147 (oudg) ON ({t499139.ParentId?}? = {t499147.DatagroupId} AND {t499147.UserId} = 150 AND {t499147.Inheritablepermission} > 0)
				INNER JOIN [Deviation(499167)] as t499167 (d) ON ({t499137.WellId?}? = {t499167.WellId})
		)  ON ({t499167.SetpointtypeId} = {t499134.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t499142.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t499147.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
