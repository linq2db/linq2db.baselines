(307162) SELECT 
	t307162.Id = t307161.Id
FROM [DctSetpointtype(307161)] as t307161 (spt)
		LEFT JOIN (
			(307198) SELECT 
				t307198.SetpointtypeId = t307194.SetpointtypeId
			FROM [VWellTree(307164)] as t307164 (t2)
					INNER JOIN [DctOu(307166)] as t307166 (tp2) ON ({t307164.ShopId?}? = {t307166.Id})
					LEFT JOIN [UacUsersDatagroup(307169)] as t307169 (cudg) ON ({t307166.Id} = {t307169.DatagroupId} AND {t307169.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307174)] as t307174 (oudg) ON ({t307166.ParentId?}? = {t307174.DatagroupId} AND {t307174.UserId} = 150 AND {t307174.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307194)] as t307194 (d) ON ({t307164.WellId?}? = {t307194.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307169.Permission, t307174.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307198 (t2_1) ON ({t307198.SetpointtypeId?} = {t307161.Id})
