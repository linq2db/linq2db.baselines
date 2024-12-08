(140925) SELECT 
	t140925.Id = t140924.Id
FROM [DctSetpointtype(140924)] as t140924 (spt)
		LEFT JOIN (
			[VWellTree(140927)] as t140927 (t2)
				INNER JOIN [DctOu(140929)] as t140929 (tp2) ON ({t140927.ShopId?}? = {t140929.Id})
				LEFT JOIN [UacUsersDatagroup(140932)] as t140932 (cudg) ON ({t140929.Id} = {t140932.DatagroupId} AND {t140932.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140937)] as t140937 (oudg) ON ({t140929.ParentId?}? = {t140937.DatagroupId} AND {t140937.UserId} = 150 AND {t140937.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140957)] as t140957 (d) ON ({t140927.WellId?}? = {t140957.WellId})
		)  ON ({t140957.SetpointtypeId} = {t140924.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140932.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140937.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
