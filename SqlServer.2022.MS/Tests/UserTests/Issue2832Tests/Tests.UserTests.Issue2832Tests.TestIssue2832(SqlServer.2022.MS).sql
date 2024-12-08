(245384) SELECT 
	t245384.Id = t245383.Id
FROM [DctSetpointtype(245383)] as t245383 (spt)
		LEFT JOIN (
			[VWellTree(245386)] as t245386 (t2)
				INNER JOIN [DctOu(245388)] as t245388 (tp2) ON ({t245386.ShopId?}? = {t245388.Id})
				LEFT JOIN [UacUsersDatagroup(245391)] as t245391 (cudg) ON ({t245388.Id} = {t245391.DatagroupId} AND {t245391.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245396)] as t245396 (oudg) ON ({t245388.ParentId?}? = {t245396.DatagroupId} AND {t245396.UserId} = 150 AND {t245396.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245416)] as t245416 (d) ON ({t245386.WellId?}? = {t245416.WellId})
		)  ON ({t245416.SetpointtypeId} = {t245383.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245391.Permission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), CAST(t245396.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "38", "17")), NULL)?}? IS NOT NULL)
