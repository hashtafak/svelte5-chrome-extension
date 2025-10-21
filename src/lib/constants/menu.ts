import type { MenuItem } from "../types";
import { House, Settings, CircleQuestionMark, Layers } from "../icons";
import { navigateTo } from "../stores/navigation";

export const MENU_ITEMS: MenuItem[] = [
  { icon: House, label: "Home", action: () => navigateTo("home") },
  { icon: Layers, label: "Components", action: () => navigateTo("components") },
  { icon: Settings, label: "Settings", action: () => navigateTo("settings") },
  { icon: CircleQuestionMark, label: "Help", action: () => navigateTo("help") },
];
