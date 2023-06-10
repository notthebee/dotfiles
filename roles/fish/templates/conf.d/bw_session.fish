{% if username == "notthebee" %}
export BW_SESSION="{{ secrets.bw_session_key_notthebee }}"
{% else %}
export BW_SESSION="{{ secrets.bw_session_key }}"
{% endif %}
