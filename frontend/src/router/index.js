import {createRouter, createWebHistory} from "vue-router";

import FertigePcs from "@/pages/FertigePcs.vue";
import PcSelbstKonfigurieren from "@/pages/PcSelbstKonfigurieren.vue";
import UebersichtCpuKompabilitaet from "@/pages/UebersichtCpuKompabilitaet.vue";
import MyRegistration from "@/pages/MyRegistration"
import LogIn from "@/pages/LogIn"

const router = createRouter({
    //optionen
    history: createWebHistory(),
    routes: [
        {
            path: "/",
            component: PcSelbstKonfigurieren,
            name:'Startseite'
        },
        {
            path: "/FertigePcs",
            component: FertigePcs,
            name: "fertig"
        },
        {
            path: "/PcSelbstKonfigurieren",
            component: PcSelbstKonfigurieren,
            name:'PcSelbstKonfigurieren'
        },
        {
            path: "/UebersichtCpuKompabilitaet",
            component: UebersichtCpuKompabilitaet,
        },
        {
            path: "/login",
            component: LogIn,
        },
        {
            path: "/sign-up",
            component: MyRegistration,
        },
    ]
});

export default router;