(245573) SELECT 
	t245573.Id = t245572.Id
FROM [DctSetpointtype(245572)] as t245572 (spt)
		LEFT JOIN (
			[VWellTree(245575)] as t245575 (t2)
				INNER JOIN [DctOu(245577)] as t245577 (tp2) ON ({t245575.ShopId?}? = {t245577.Id})
				LEFT JOIN [UacUsersDatagroup(245580)] as t245580 (cudg) ON ({t245577.Id} = {t245580.DatagroupId} AND {t245580.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245585)] as t245585 (oudg) ON ({t245577.ParentId?}? = {t245585.DatagroupId} AND {t245585.UserId} = 150 AND {t245585.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245605)] as t245605 (d) ON ({t245575.WellId?}? = {t245605.WellId})
		)  ON ({t245605.SetpointtypeId} = {t245572.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245580.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245585.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
