(245569) SELECT 
	t245569.Id = t245568.Id
FROM [DctSetpointtype(245568)] as t245568 (spt)
		LEFT JOIN (
			[VWellTree(245571)] as t245571 (t2)
				INNER JOIN [DctOu(245573)] as t245573 (tp2) ON ({t245571.ShopId?}? = {t245573.Id})
				LEFT JOIN [UacUsersDatagroup(245576)] as t245576 (cudg) ON ({t245573.Id} = {t245576.DatagroupId} AND {t245576.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245581)] as t245581 (oudg) ON ({t245573.ParentId?}? = {t245581.DatagroupId} AND {t245581.UserId} = 150 AND {t245581.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245601)] as t245601 (d) ON ({t245571.WellId?}? = {t245601.WellId})
		)  ON ({t245601.SetpointtypeId} = {t245568.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245576.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245581.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
