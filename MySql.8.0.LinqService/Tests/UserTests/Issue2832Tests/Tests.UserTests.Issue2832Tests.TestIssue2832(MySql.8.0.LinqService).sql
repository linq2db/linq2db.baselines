(205873) SELECT 
	t205873.Id = t205872.Id
FROM [DctSetpointtype(205872)] as t205872 (spt)
		LEFT JOIN (
			[VWellTree(205875)] as t205875 (t2)
				INNER JOIN [DctOu(205877)] as t205877 (tp2) ON ({t205875.ShopId?}? = {t205877.Id})
				LEFT JOIN [UacUsersDatagroup(205880)] as t205880 (cudg) ON ({t205877.Id} = {t205880.DatagroupId} AND {t205880.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(205885)] as t205885 (oudg) ON ({t205877.ParentId?}? = {t205885.DatagroupId} AND {t205885.UserId} = 150 AND {t205885.Inheritablepermission} > 0)
				INNER JOIN [Deviation(205905)] as t205905 (d) ON ({t205875.WellId?}? = {t205905.WellId})
		)  ON ({t205905.SetpointtypeId} = {t205872.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t205880.Permission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), CAST(t205885.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "29", "10")), NULL)?}? IS NOT NULL)
