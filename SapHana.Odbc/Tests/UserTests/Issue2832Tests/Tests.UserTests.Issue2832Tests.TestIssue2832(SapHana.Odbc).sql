(99818) SELECT 
	t99818.Id = t99817.Id
FROM [DctSetpointtype(99817)] as t99817 (spt)
		LEFT JOIN (
			[VWellTree(99820)] as t99820 (t2)
				INNER JOIN [DctOu(99822)] as t99822 (tp2) ON ({t99820.ShopId?}? = {t99822.Id})
				LEFT JOIN [UacUsersDatagroup(99825)] as t99825 (cudg) ON ({t99822.Id} = {t99825.DatagroupId} AND {t99825.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(99830)] as t99830 (oudg) ON ({t99822.ParentId?}? = {t99830.DatagroupId} AND {t99830.UserId} = 150 AND {t99830.Inheritablepermission} > 0)
				INNER JOIN [Deviation(99850)] as t99850 (d) ON ({t99820.WellId?}? = {t99850.WellId})
		)  ON ({t99850.SetpointtypeId} = {t99817.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t99825.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t99830.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
