(245322) SELECT 
	t245322.Id = t245321.Id
FROM [DctSetpointtype(245321)] as t245321 (spt)
		LEFT JOIN (
			[VWellTree(245324)] as t245324 (t2)
				INNER JOIN [DctOu(245326)] as t245326 (tp2) ON ({t245324.ShopId?}? = {t245326.Id})
				LEFT JOIN [UacUsersDatagroup(245329)] as t245329 (cudg) ON ({t245326.Id} = {t245329.DatagroupId} AND {t245329.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245334)] as t245334 (oudg) ON ({t245326.ParentId?}? = {t245334.DatagroupId} AND {t245334.UserId} = 150 AND {t245334.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245354)] as t245354 (d) ON ({t245324.WellId?}? = {t245354.WellId})
		)  ON ({t245354.SetpointtypeId} = {t245321.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245329.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245334.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
