(107407) SELECT 
	t107407.Id = t107406.Id
FROM [DctSetpointtype(107406)] as t107406 (spt)
		LEFT JOIN (
			[VWellTree(107409)] as t107409 (t2)
				INNER JOIN [DctOu(107411)] as t107411 (tp2) ON ({t107409.ShopId?}? = {t107411.Id})
				LEFT JOIN [UacUsersDatagroup(107414)] as t107414 (cudg) ON ({t107411.Id} = {t107414.DatagroupId} AND {t107414.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(107419)] as t107419 (oudg) ON ({t107411.ParentId?}? = {t107419.DatagroupId} AND {t107419.UserId} = 150 AND {t107419.Inheritablepermission} > 0)
				INNER JOIN [Deviation(107439)] as t107439 (d) ON ({t107409.WellId?}? = {t107439.WellId})
		)  ON ({t107439.SetpointtypeId} = {t107406.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t107414.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t107419.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
