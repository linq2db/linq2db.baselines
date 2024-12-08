(246098) SELECT 
	t246098.Id = t246097.Id
FROM [DctSetpointtype(246097)] as t246097 (spt)
		LEFT JOIN (
			[VWellTree(246100)] as t246100 (t2)
				INNER JOIN [DctOu(246102)] as t246102 (tp2) ON ({t246100.ShopId?}? = {t246102.Id})
				LEFT JOIN [UacUsersDatagroup(246105)] as t246105 (cudg) ON ({t246102.Id} = {t246105.DatagroupId} AND {t246105.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(246110)] as t246110 (oudg) ON ({t246102.ParentId?}? = {t246110.DatagroupId} AND {t246110.UserId} = 150 AND {t246110.Inheritablepermission} > 0)
				INNER JOIN [Deviation(246130)] as t246130 (d) ON ({t246100.WellId?}? = {t246130.WellId})
		)  ON ({t246130.SetpointtypeId} = {t246097.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t246105.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t246110.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
