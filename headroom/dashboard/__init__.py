"""Headroom Dashboard - Real-time proxy monitoring UI."""

from pathlib import Path

DASHBOARD_DIR = Path(__file__).parent
TEMPLATES_DIR = DASHBOARD_DIR / "templates"


def get_dashboard_html() -> str:
    """Load the dashboard HTML template."""
    template_path = TEMPLATES_DIR / "dashboard.html"
    return template_path.read_text(encoding="utf-8")


def get_settings_html() -> str:
    """Load the settings GUI HTML template."""
    template_path = TEMPLATES_DIR / "settings.html"
    return template_path.read_text(encoding="utf-8")

def get_analytics_html() -> str:
    """Load the analytics GUI HTML template."""
    template_path = TEMPLATES_DIR / "analytics.html"
    return template_path.read_text(encoding="utf-8")

def get_logs_html() -> str:
    """Load the logs GUI HTML template."""
    template_path = TEMPLATES_DIR / "logs.html"
    return template_path.read_text(encoding="utf-8")

def get_system_html() -> str:
    """Load the system GUI HTML template."""
    template_path = TEMPLATES_DIR / "system.html"
    return template_path.read_text(encoding="utf-8")
