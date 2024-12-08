(245466) SELECT 
	t245466.Id = t245465.Id
FROM [DctSetpointtype(245465)] as t245465 (spt)
		LEFT JOIN (
			[VWellTree(245468)] as t245468 (t2)
				INNER JOIN [DctOu(245470)] as t245470 (tp2) ON ({t245468.ShopId?}? = {t245470.Id})
				LEFT JOIN [UacUsersDatagroup(245473)] as t245473 (cudg) ON ({t245470.Id} = {t245473.DatagroupId} AND {t245473.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245478)] as t245478 (oudg) ON ({t245470.ParentId?}? = {t245478.DatagroupId} AND {t245478.UserId} = 150 AND {t245478.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245498)] as t245498 (d) ON ({t245468.WellId?}? = {t245498.WellId})
		)  ON ({t245498.SetpointtypeId} = {t245465.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245473.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245478.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
