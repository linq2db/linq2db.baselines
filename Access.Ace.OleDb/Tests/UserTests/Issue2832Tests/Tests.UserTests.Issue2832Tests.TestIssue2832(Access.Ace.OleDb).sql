(307158) SELECT 
	t307158.Id = t307157.Id
FROM [DctSetpointtype(307157)] as t307157 (spt)
		LEFT JOIN (
			(307194) SELECT 
				t307194.SetpointtypeId = t307190.SetpointtypeId
			FROM [VWellTree(307160)] as t307160 (t2)
					INNER JOIN [DctOu(307162)] as t307162 (tp2) ON ({t307160.ShopId?}? = {t307162.Id})
					LEFT JOIN [UacUsersDatagroup(307165)] as t307165 (cudg) ON ({t307162.Id} = {t307165.DatagroupId} AND {t307165.UserId} = 150)
					LEFT JOIN [UacUsersDatagroup(307170)] as t307170 (oudg) ON ({t307162.ParentId?}? = {t307170.DatagroupId} AND {t307170.UserId} = 150 AND {t307170.Inheritablepermission} > 0)
					INNER JOIN [Deviation(307190)] as t307190 (d) ON ({t307160.WellId?}? = {t307190.WellId})
			WHERE
				({UTILS.GREATESTNOTNULL3(t307165.Permission, t307170.Inheritablepermission, NULL)?}? IS NOT NULL)
		) as t307194 (t2_1) ON ({t307194.SetpointtypeId?} = {t307157.Id})
