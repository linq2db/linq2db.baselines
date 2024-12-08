(240560) SELECT 
	t240560.Id = t240559.Id
FROM [DctSetpointtype(240559)] as t240559 (spt)
		LEFT JOIN (
			[VWellTree(240562)] as t240562 (t2)
				INNER JOIN [DctOu(240564)] as t240564 (tp2) ON ({t240562.ShopId?}? = {t240564.Id})
				LEFT JOIN [UacUsersDatagroup(240567)] as t240567 (cudg) ON ({t240564.Id} = {t240567.DatagroupId} AND {t240567.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(240572)] as t240572 (oudg) ON ({t240564.ParentId?}? = {t240572.DatagroupId} AND {t240572.UserId} = 150 AND {t240572.Inheritablepermission} > 0)
				INNER JOIN [Deviation(240592)] as t240592 (d) ON ({t240562.WellId?}? = {t240592.WellId})
		)  ON ({t240592.SetpointtypeId} = {t240559.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t240567.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t240572.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
