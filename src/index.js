import express from 'express'
import cors from 'cors'

const PORT = process.env.PORT || 3000

const App = express()
App.use(cors())

App.get('/test', (req,res) => {
    res.send('Docker API is running🐳')
})

App.listen(PORT, () => {
    console.log(`listening on http://localhost:${PORT}...`)
})
