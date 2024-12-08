(245608) SELECT 
	t245608.Id = t245607.Id
FROM [DctSetpointtype(245607)] as t245607 (spt)
		LEFT JOIN (
			[VWellTree(245610)] as t245610 (t2)
				INNER JOIN [DctOu(245612)] as t245612 (tp2) ON ({t245610.ShopId?}? = {t245612.Id})
				LEFT JOIN [UacUsersDatagroup(245615)] as t245615 (cudg) ON ({t245612.Id} = {t245615.DatagroupId} AND {t245615.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245620)] as t245620 (oudg) ON ({t245612.ParentId?}? = {t245620.DatagroupId} AND {t245620.UserId} = 150 AND {t245620.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245640)] as t245640 (d) ON ({t245610.WellId?}? = {t245640.WellId})
		)  ON ({t245640.SetpointtypeId} = {t245607.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245615.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245620.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
