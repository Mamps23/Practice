import streamlit as st
import requests
import pandas as pd
st.sidebar.title(':panda_face:💬 Test App')
symbol = st.sidebar.selectbox('Select Symbol', ['BTCUSDT', 'ETHUSDT', 'SOLUSDT'])
button = st.sidebar.button('Click Here to Get Price Data')  # Creating button
if button:
    data = requests.get(f'https://fapi.binance.com/fapi/v1/klines?symbol={symbol}&interval=1d&limit=1000').json()
    data = pd.DataFrame(data)[[0, 1, 2, 3, 4, 5]]
    data.rename(columns={0: 'timestamp', 1: 'open', 2: 'high', 3: 'low', 4: 'close', 5: 'volume'}, inplace=True)
    data['timestamp'] = pd.to_datetime(data['timestamp'], unit='ms')
    st.write(data)
else:
    st.write('Please enter the proper values and click on the button below to get your required data')