(245829) SELECT 
	t245829.Id = t245828.Id
FROM [DctSetpointtype(245828)] as t245828 (spt)
		LEFT JOIN (
			[VWellTree(245831)] as t245831 (t2)
				INNER JOIN [DctOu(245833)] as t245833 (tp2) ON ({t245831.ShopId?}? = {t245833.Id})
				LEFT JOIN [UacUsersDatagroup(245836)] as t245836 (cudg) ON ({t245833.Id} = {t245836.DatagroupId} AND {t245836.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245841)] as t245841 (oudg) ON ({t245833.ParentId?}? = {t245841.DatagroupId} AND {t245841.UserId} = 150 AND {t245841.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245861)] as t245861 (d) ON ({t245831.WellId?}? = {t245861.WellId})
		)  ON ({t245861.SetpointtypeId} = {t245828.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245836.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245841.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
